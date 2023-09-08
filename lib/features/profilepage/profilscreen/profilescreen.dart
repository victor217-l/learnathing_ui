import 'package:flutter/material.dart';
import 'package:learnathing/constraint/accountab.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),

                    //
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                        children: [
                          Column(
                            children: [
<<<<<<< HEAD
                              Text("323", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
=======
                              Text("323", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
>>>>>>> f3a953c32e7b93b9624c7a847c88c2708e18cd32
                              Text("Post")
                            ],
                          ),
                          Column(
                            children: [
<<<<<<< HEAD
                              Text("323", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
=======
                              Text("323", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
>>>>>>> f3a953c32e7b93b9624c7a847c88c2708e18cd32
                              Text("Following")
                            ],
                          ),
                          Column(
                            children: [
<<<<<<< HEAD
                              Text("323", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
=======
                              Text("323", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
>>>>>>> f3a953c32e7b93b9624c7a847c88c2708e18cd32
                              Text("Views")
                            ],
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("koko", style: TextStyle(fontWeight: FontWeight.bold,),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("Apps and games",),
                ),
                Text("m.youtube.com/itoo", style: TextStyle(fontWeight: FontWeight.bold,),),

                  ],


               )
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                     Padding(
                       padding: const EdgeInsets.all(2.0),
                       child: Expanded(
                         child: Container(
                            padding: EdgeInsets.all(8),
                            child: Center(child: Text('Edit Profile'),),
                            decoration: BoxDecoration(
<<<<<<< HEAD
                              border: Border.all(color: Colors.black, width: 1 ),
=======
                              border: Border.all(color: Colors.grey ),
>>>>>>> f3a953c32e7b93b9624c7a847c88c2708e18cd32
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                       ),
                     ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Expanded(
                        child: Container(
                          padding: EdgeInsets.all(8),
<<<<<<< HEAD
                          child: Center(child: Text('Add Profile'),),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black , width: 1),
=======
                          child: Center(child: Text('Ad Profile'),),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey ),
>>>>>>> f3a953c32e7b93b9624c7a847c88c2708e18cd32
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
<<<<<<< HEAD
              TabBar(
                indicatorColor: Colors.black ,
                  tabs: [
=======
              TabBar(tabs: [
>>>>>>> f3a953c32e7b93b9624c7a847c88c2708e18cd32
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined, color: Colors.black54, ),
                ),
                Tab(
                  icon: Icon(Icons.video_call, color: Colors.black54,),
                )
              ]),
              // Expanded(child:
              // TabBarView(children: [
              //    AccountTabs(),
              //   AccountTabs(),
              //
              // ],))
  ]
          ),
        ),
      ),
    );
  }
}
