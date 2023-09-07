import 'package:flutter/material.dart';
import 'package:learnathing/common/custombutton.dart';
import 'package:learnathing/features/auth/screen/loginscreen.dart';

class StartScreen2 extends StatefulWidget {
  const StartScreen2({Key? key}) : super(key: key);

  @override
  State<StartScreen2> createState() => _StartScreen2State();
}

class _StartScreen2State extends State<StartScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       alignment: Alignment.center,
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             ClipRRect(
               borderRadius: BorderRadius.all(Radius.circular(25)),
                 child: Image.asset("image/Rectangle34.png", height: 60, width: 60, fit: BoxFit.cover,)),
             SizedBox(height: 10,),
             Text("username", style: TextStyle(color: Colors.black),),
             SizedBox(height: 5,),
             CustomButtonn(onpress: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (_) => LoginScreen()));
             }, text: "Log in"),
             SizedBox(height: 15,),
             Text("Siwtch Accounts", style: TextStyle(color: Colors.lightBlue),),
             Align(
               alignment: Alignment.bottomCenter,
               child: RichText(
                 text: TextSpan(
                   children: [
                     TextSpan(text: "Don't have an account \n", style: TextStyle(color: Colors.grey)),
                     TextSpan(text: "Sign up", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
                   ]
                 ),
               ),
             )


           ],
         ),
       ),
     ),
    );
  }
}
