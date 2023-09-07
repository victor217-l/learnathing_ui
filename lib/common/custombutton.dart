import 'package:flutter/material.dart';

class CustomButtonn extends StatelessWidget {
  final VoidCallback onpress;
  final String text;
  const CustomButtonn({Key? key, required this.onpress, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
        child: Center(child: Text(text,
          style: TextStyle(color: Colors.white),),));
  }
}
