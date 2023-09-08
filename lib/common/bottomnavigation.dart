import 'package:flutter/material.dart';
import 'package:learnathing/features/homeage/homescreen/homescreen.dart';
import 'package:learnathing/features/notpagae/natoscreen/yourvideosscreen.dart';
import 'package:learnathing/features/profilepage/profilscreen/profilescreen.dart';
import 'package:learnathing/features/search/searscreen/searchscreen.dart';

import '../features/appost/screen/addpost.dart';
import '../features/reealscreen/screen/realscreen.dart';
import 'globalvariables.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  List<Widget> list = [
    HomeScreen(),
   SearchScreen(),
    InstagramPostScreen(),
   RealScreen(),
   ProfileScreen(),

  ];


  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: GlobalVariables.primaryColor,
        unselectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: (index) => setState(()  => selectedIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.library_add_check_outlined),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'home'),
        ],
      ),
    );
  }
}
