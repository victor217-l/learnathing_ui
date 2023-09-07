import 'package:flutter/material.dart';
import 'package:learnathing/common/globalvariables.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.grey[200],
              child: Row(
                children: [
                  Icon(Icons.search),
                  Container(
                    child: Text(
                       'Search', style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           // SizedBox(height: size.height *0.1,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Cooking", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: size.height *0.00001,),
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
                              padding: const EdgeInsets.only(left: 10.0, right: 6.0),
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
                      child:   Stack(
                        children: [
                          Positioned(
                              bottom: 18,
                              left: 0,
                              right: 0,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 12.0, right: 7),
                                  child: Text("Your on",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(color: Colors.white),)))
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
                      child:   Stack(
                        children: [
                          Positioned(
                              bottom: 18,
                              left: 0,
                              right: 0,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 12.0, right: 7),
                                  child: Text("Your on",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(color: Colors.white),)))
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Tech", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: size.height *0.00001,),
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
                              padding: const EdgeInsets.only(left: 10.0, right: 6.0),
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
                              left: 0,
                              right: 0,
                              child: Padding(
                                padding: EdgeInsets.only(left: 12.0, right: 7),
                                  child: Text("Your on",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(color: Colors.white),)))
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
                              left: 0,
                              right: 0,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 12.0, right: 7),
                                  child: Text("Your on",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(color: Colors.white),)))
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    Container(height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("image/Rectangle67.png",),
                            fit: BoxFit.contain,
                          )
                      ) ,
                    ),
                    ListTile(
                      leading:  Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: GlobalVariables.primaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          )
                      ),
                      title: Text('View of city'),
                      subtitle: Text('Roadwell'),
                    ),

                  ],
                ),
              ),
            )


          ],
        ),
      ) ,
    );
  }
}
