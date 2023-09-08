import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  const CustomTextField({Key? key,
    required this.controller, required this.hintext}) : super(key: key);



  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    bool obscureText = false;
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Colors.grey ,
=======
    //bool obscureText = false;
    return TextFormField(
      controller: controller,
     // obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Colors.grey[200] ,
>>>>>>> f3a953c32e7b93b9624c7a847c88c2708e18cd32
        filled: true,
        hintText: hintext,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1,color: Colors.grey)
        ),
        border:  OutlineInputBorder(
            borderSide: BorderSide(width: 1,
                color: Colors.grey)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1,
          color: Colors.grey)
        ),
        errorBorder:   OutlineInputBorder(
            borderSide: BorderSide(width: 1,
                color: Colors.grey)
        ),
        focusedErrorBorder:  OutlineInputBorder(
            borderSide: BorderSide(width: 1,
                color: Colors.grey)
        ),
      ),

      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your $hintext';
        }
      },
    );
  }
}
