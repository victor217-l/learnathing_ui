import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learnathing/common/bottomnavigation.dart';
import 'package:learnathing/constraint/httperrorhandler.dart';
import 'package:learnathing/constraint/utills.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService{

  void signup({
    required BuildContext context,
  required String username,
    required String email,
    required String password,
}) async {
    try{
      http.Response res = await http.post(Uri.parse(""),
        body:{
        "username":username,
          "email":email,
          "password":password,
        }
      );

      print(res.body);

      httpErrorHandler(response: res, context: context, onSuccess: () async {
        showsnackber(context, jsonDecode(res.body)['msg']);
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => BottomNavigation()));
      });

    }catch(e){
      showsnackber(context, e.toString());
    }
  }


  void loginbut({
   required BuildContext context,
    required String email,
   required String password,
  }) async {
    try{
      
      http.Response res = await http.post(Uri.parse("https://htman.onrender.com/login"),
        body: {
        "email":email,
          "password": password,
        }
      );

      print(res.body);

      httpErrorHandler(response: res, context: context, onSuccess: () async {
        showsnackber(context, jsonDecode(res.body)['msg']);
        SharedPreferences pref = await SharedPreferences.getInstance();
        final usernametoken = pref.getString(jsonDecode(res.body)['accesToken']);
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => BottomNavigation()));
      });

    }catch(e){
      showsnackber(context, e.toString());

    }

  }
}