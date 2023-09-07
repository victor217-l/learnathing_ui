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


  void login({
   required BuildContext context,
    required String email,
   required String password,
  }) async {
    try{
      
      http.Response res = await http.post(Uri.parse("https://learningapp-c205.onrender.com/login"),
        body: {
          "email":email,
          "password": password,
        }
      );

      print(res.body);

      httpErrorHandler(response: res, context: context, onSuccess: () async {
        showsnackber(context, jsonDecode(res.body)['msg']);
        //showsnackber(context, jsonDecode(res.body)['error']);
        SharedPreferences pref = await SharedPreferences.getInstance();
       await  pref.setString('usertoken',jsonDecode(res.body)['accesstoken']);
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => BottomNavigation()));
      });

      // httpErrorHandler(
      //     response: res, context: context, onSuccess: ()  async {
      //   showsnackber(context, jsonDecode(res.body)['msg']);
      //   SharedPreferences prefs =  await SharedPreferences.getInstance();
      //   await  prefs.setString("token", jsonDecode(res.body)['accessToken']);
      //   Navigator.pushNamedAndRemoveUntil(context, MainPage.routeName, (route) => false);
      // });

    }catch(e){
      showsnackber(context, e.toString());

    }

  }
}