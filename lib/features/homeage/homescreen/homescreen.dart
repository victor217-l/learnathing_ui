import 'package:flutter/material.dart';
import 'package:learnathing/common/globalvariables.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {




  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SingleChildScrollView(
        child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.07),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("image/appicon.png", height: 30, width: 30, fit: BoxFit.contain,),
                        SizedBox(width: 10,),
                        Text("L.A.T", style: TextStyle(color: Colors.indigo, fontSize: 20),),

                      ],
                    ),

                  //  SizedBox(width: size.width * 0.52,),
                    Row(
                      children: [
                        Icon(Icons.notifications_outlined),
                        SizedBox(width: 3,),
                        Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                color:GlobalVariables.primaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(25))
                            ),
                            child: Center(
                              child: Text("Add Video", style: TextStyle(color: Colors.white, fontSize: 10),) ,
                            )
                        ),
                      ],
                    )

                  ],
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Trending Videos"),
              ),
              SizedBox(height: 8,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("image/Rectangle34.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 18,
                              left: 0, // You can adjust the left position as needed
                              right: 0, // You can adjust the right position as needed
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16.0, right: 6.0),
                                child: Text(
                                  "Your Text Here mn",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,

                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                      // //how to make text  fit inside of the image
                      // Container(
                      //   height: 200,
                      //   width: 120,
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //       image: AssetImage("image/Rectangle34.png",),
                      //       fit: BoxFit.contain,
                      //     )
                      //   ),
                      //   child:  Stack(
                      //     children: [
                      //       Positioned(
                      //         bottom: 18,
                      //           child: Text("", style: TextStyle(color: Colors.white),))
                      //     ],
                      //   ),
                      // ),

                          Container(
                            height: 200,
                            width: 120,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("image/Rectangle 6.png",),
                                  fit: BoxFit.contain,
                                )
                            ),
                              child:  Stack(
                                children: [
                                  Positioned(
                                      bottom: 18,

                                      child: Center(child: Text("", style: TextStyle(color: Colors.white),)))
                                ],
                              ),
                          ),
                          // Positioned(
                          //     bottom: 18,
                          //     child: Text("A blue night", style: TextStyle(color: Colors.white),)),

                      Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("image/Rectangle34.png",),
                              fit: BoxFit.contain,
                            )
                        ),
                        child:  Stack(
                          children: [
                            Positioned(
                                bottom: 18,
                                child: Text(""))
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Text("Videos for you"),
                ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    children: [
                      Container(height: 200,
                        width:double.infinity ,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("image/Rectangle67.png",),
                        fit: BoxFit.contain,
                      )
                    ) ,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: ListTile(
                          leading: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: GlobalVariables.primaryColor,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              )
                          ),
                          title:   Text("View of at a city") ,
                          subtitle:  Text("RoadWell ") ,
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      //   child: Row(
                      //     children: [
                      //       Container(
                      //         height: 60,
                      //         width: 60,
                      //         decoration: BoxDecoration(
                      //           color: GlobalVariables.primaryColor,
                      //           borderRadius: BorderRadius.all(Radius.circular(20))
                      //         )
                      //       ),
                      //       SizedBox(width:50),
                      //       Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Text("View of at a city"),
                      //           SizedBox(width: 10),
                      //           Text("RoadWell ")
                      //         ],
                      //       )
                      //     ]
                      //   ),
                      // )
                    ],
                  ),
                ),
              )

            ],
          ),
        ),

    );
  }
}
