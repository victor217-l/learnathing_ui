import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnathing/common/globalvariables.dart';

void showsnackber(BuildContext context, String text){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text,
      style: TextStyle(color: Colors.white)),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
    padding: EdgeInsets.all(12),
    elevation: 1,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.lightBlue,
  ),
  )
  ;
}