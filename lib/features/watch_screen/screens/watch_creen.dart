import 'package:flutter/material.dart';

import '../../../common/globalvariables.dart';


class WatchScreenNormal extends StatefulWidget {
  const WatchScreenNormal({Key? key}) : super(key: key);

  @override
  State<WatchScreenNormal> createState() => _WatchScreenNormalState();
}

class _WatchScreenNormalState extends State<WatchScreenNormal> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("image/Rectangle55.png",
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
            ),

            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(12),
                  topLeft: Radius.circular(12)),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 12,),
                      Text("Welcome to cinema",
                        style: TextStyle(color: Colors.black,
                            fontSize: 17, fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Row(
                        children: [
                          Text("1B views", style: TextStyle(color: Colors.black,
                              fontSize: 10, fontWeight: FontWeight.w500), ),
                          SizedBox(width:10,),
                          Text("5 month ago", style: TextStyle(color: Colors.black,
                              fontSize: 10, fontWeight: FontWeight.w500), ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 3,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: GlobalVariables.primaryColor,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 60,
                        width: 190,
                        decoration: BoxDecoration(
                          color: GlobalVariables.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                            //  HomeIcon(text: "T"),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  Text("This place", style: TextStyle(color: Colors.black,
                                      fontSize: 13, fontWeight: FontWeight.bold), ),
                                  SizedBox(height: 4,),
                                  Text("Richard bill", style: TextStyle(color: Colors.black45,
                                      fontSize: 10, fontWeight: FontWeight.w500), ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12,),
                      Text("Friends you watched with", style: TextStyle(color: Colors.black,
                          fontSize: 10, fontWeight: FontWeight.bold), ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 17,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: GlobalVariables.primaryColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                          child: Text("Comments"),
                        ),
                      ),
                      SizedBox(height: 10,),
                //       Stack(
                //           children: [
                //             ClipRRect(
                //               borderRadius: BorderRadius.circular(15),
                //               child: Image.asset(
                //                 "image/bac2411688.jpg",
                //                 width: 600,
                //                 height: 150,
                //                 fit: BoxFit.cover,
                //               ),
                //             ),
                //             /*  Container(
                //         height: 80,
                //         width: 300,
                //         decoration: BoxDecoration(
                //           image: DecorationImage(
                //               image: AssetImage(
                //                 "image/bac2411688.jpg",)),
                //         ),
                // ), */
                //             Padding(
                //               padding: const EdgeInsets.only(left:9.0,  right: 9.0, top: 70),
                //               child: Row(children: [
                //                 HomeIcon(text: "T"),
                //                 SizedBox(width: 10,),
                //                 Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Text("View the sky a LA", style: TextStyle(fontSize: 17, color: Color.fromARGB(
                //                         255, 232, 229, 222)),),
                //                     SizedBox(height: 2,),
                //                     Text("Roadwell brian", style: TextStyle(fontSize: 12, color:Color.fromARGB(
                //                         255, 192, 189, 180)  ,)),
                //                   ],
                //                 ),
                //               ]),
                //             ),
                //
                //           ]
                //
                //       ),
                       Row(
                        children: [
                          Row(
                            children: [
                              IconButton(onPressed: (() {}),
                                  icon:Icon(Icons.favorite_border)),
                              SizedBox(width: 1,),
                              Text("favourite")
                            ],
                          ),
                          SizedBox(width: 10,),
                          Row(
                            children: [
                              IconButton(onPressed: (() {}),
                                  icon:Icon(Icons.comment)),
                              SizedBox(width: 1,),
                              Text("Comment")
                            ],
                          ),
                          SizedBox(width: 10,),
                          Row(
                            children: [
                              IconButton(onPressed: (() {}),
                                  icon:Icon(Icons.share)),
                              SizedBox(width: 1,),
                              Text("Share")
                            ],
                          ),
                        ],),

                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
