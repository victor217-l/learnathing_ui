import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:learnathing/features/startscreen2.dart';
>>>>>>> f3a953c32e7b93b9624c7a847c88c2708e18cd32

class StartupScreen extends StatefulWidget {
  const StartupScreen({Key? key}) : super(key: key);

  @override
  State<StartupScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
<<<<<<< HEAD
               // Image.asset("image", fit: BoxFit.contain,)
=======
                Padding(padding: EdgeInsets.only(top: 130) ,
                  child: InkWell(
                    onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => StartScreen2()));
                       },
                      child: Image.asset("image/appicon.png", fit: BoxFit.contain,)),
                )
>>>>>>> f3a953c32e7b93b9624c7a847c88c2708e18cd32

              ],
            ),
          ),

        ],
      )

    );
  }
}
