import 'package:flutter/material.dart';

import '../../../common/globalvariables.dart';

class YourScreen extends StatefulWidget {
  const YourScreen({Key? key}) : super(key: key);

  @override
  State<YourScreen> createState() => _YourScreenState();
}

class _YourScreenState extends State<YourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         children: [
           SizedBox(height: 10,),
           Row(
             children: [
               Container(
                   height: 60,
                   width: 60,
                   decoration: BoxDecoration(
                     color: GlobalVariables.primaryColor,
                   ),
                 child: Text('User'),
               ),
             ],
           ),
           Icon(Icons.video_call_outlined)


         ],
       ),
     ),
    );
  }
}
