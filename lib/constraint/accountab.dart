import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountTabs extends StatelessWidget {
  const AccountTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3 ),
     itemBuilder: (context,index) {
          return Padding(padding:
          EdgeInsets.all(12),
            child: Container(
              color: Colors.green[100],
            ) ,
          );
     },
    );
  }
}
