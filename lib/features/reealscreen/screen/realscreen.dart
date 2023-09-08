
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RealScreen extends StatefulWidget {
  const RealScreen({Key? key}) : super(key: key);

  @override
  State<RealScreen> createState() => _RealScreenState();
}

class _RealScreenState extends State<RealScreen> {




  buildProfile(String profilePhoto) {
    return SizedBox(width: 60, height: 60, child: Stack(
      children: [
        Positioned(
            left: 5,
            child: Container(width: 50,
              height: 50,
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image(image: NetworkImage(profilePhoto),
                  fit: BoxFit.cover,),
              ),
            )
        )
      ],
    ),);
  }

  buildMusicAlbum(String profilePhoto) {
    return SizedBox(width: 60, height: 60, child: Column(
      children: [
        Container(padding: EdgeInsets.all(1),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.grey,
                Colors.white,
              ]),
              borderRadius: BorderRadius.circular(25)
          ),
          child: ClipRRect(borderRadius: BorderRadius.circular(25),),
        )
      ],
    ),);
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: PageView.builder(
          itemCount: 6,
          controller: PageController(initialPage: 0, viewportFraction: 1),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            //  final data = videoController.videoList[index];
            return Stack(
              children: [
                Image.asset("image/Rectangle34.png",
                  height: double.infinity,
                  fit: BoxFit.cover,),

                //   VideoPlayerItem(
                //      videoUrl: data.videoUrl),
                Column(
                  //Cliprect for adding border radius
                  children: [
                    const SizedBox(height: 100,),
                    Expanded(child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(child: Container(
                            padding: EdgeInsets.only(left: 20,),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("name", style: TextStyle(fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),),
                                Text("caption", style: TextStyle(fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.music_note, color: Colors.white,),
                                    Text("song name",
                                      style: TextStyle(fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),)
                                  ],
                                )
                              ],
                            ),
                          )),
                          Container(
                              width: 100,
                              margin: EdgeInsets.only(top: size.height /8),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly,
                                  children: [
                                    //  buildProfile("profile photo"),
                                    Column(
                                      children: [
                                        InkWell(
                                            onTap: () => {},
                                            //videoController.likeVideos(data.id),
                                            child: Icon(
                                                Icons.favorite, size: 40,
                                                color:
                                                Colors.white)),
                                        SizedBox(height: 7,),
                                        Text("likes",
                                          style: TextStyle(fontSize: 20,
                                              color: Colors.white),),
                                        Column(
                                          children: [
                                            InkWell(
                                                onTap: () {},
                                                child: const Icon(
                                                  Icons.comment, size: 40,
                                                  color: Colors.white,)
                                            ),
                                            SizedBox(height: 7,),
                                            Text("12",
                                              style: TextStyle(fontSize: 20,
                                                  color: Colors.white),),
                                          ],
                                        ),
                                        Column(
                                            children: [
                                              InkWell(
                                                  onTap: () {},
                                                  child: const Icon(
                                                    Icons.reply, size: 40,
                                                    color: Colors.white,)),
                                              SizedBox(height: 7,),
                                              Text("lenth",
                                                style: TextStyle(fontSize: 20,
                                                    color: Colors.white),),
                                            ]),
                                        SizedBox(height: 7,),
                                        Text("List of players",
                                          style: TextStyle(fontSize: 15,
                                              color: Colors.white),),
                                        SizedBox(height: 12,),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset("image/pexels-bao-dang-3700369.jpg"),
                                        )
                                        //  CircleAnimation(child: buildMusicAlbum(
                                        //   data.profilePhoto))


                                      ],
                                    ),
                                  ]
                              )
                          )
                        ]),
                    )
                  ],
                )

              ],
            );

          }
      ),
    );
  }
}


class ReeslScreen extends StatefulWidget {
  const ReeslScreen({Key? key}) : super(key: key);

  @override
  State<ReeslScreen> createState() => _ReeslScreenState();
}

class _ReeslScreenState extends State<ReeslScreen> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
        controller: PageController(initialPage: 0, viewportFraction: 1),
        itemBuilder: (context,builder) {
          return Stack(
            children: [
              Image.asset('image/Rectangle34.png',height: double.infinity, fit: BoxFit.contain,),
              Column(
                children: [
                  Expanded(
                      child: Container(
                        height: 50,
                        width: 40,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Song"),
                            Text("ma"),
                            Text("mn")
                            
                          ],
                        ),
                      )),
                  Container(
                    width: 100,

                  )
                ],
              )
            ],
          );
        });
  }
}
