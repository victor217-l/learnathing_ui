import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

// class InstagramPostScreen extends StatefulWidget {
//   @override
//   _InstagramPostScreenState createState() => _InstagramPostScreenState();
// }
//
// class _InstagramPostScreenState extends State<InstagramPostScreen> {
//   List<Asset> selectedMedia = [];
//
//   Future<void> _pickMedia() async {
//     List<Asset> pickedMedia = [];
//
//     try {
//       pickedMedia = await MultiImagePicker.pickImages(
//         maxImages: 10, // Maximum number of images to select
//         enableCamera: true,
//         selectedAssets: selectedMedia,
//       );
//     } catch (e) {
//       // Handle exceptions
//     }
//
//     if (!mounted) return;
//
//     setState(() {
//       selectedMedia = pickedMedia;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('New Post'),
//         actions: [
//           // FlatButton(
//           //   onPressed: () {
//           //     // Implement post logic here
//           //   },
//           //   child: Text('Post'),
//           // ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Button to open image picker
//             ElevatedButton(
//               onPressed: _pickMedia,
//               child: Text('Pick Media'),
//             ),
//             // Grid to display selected media
//             GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//               ),
//               itemCount: selectedMedia.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Image.file(File(selectedMedia[index]));
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class InstagramPostScreen extends StatefulWidget {
  @override
  _InstagramPostScreenState createState() => _InstagramPostScreenState();
}

class _InstagramPostScreenState extends State<InstagramPostScreen> {
  List<XFile> selectedMedia = [];

  Future<void> _pickMedia() async {
    List<XFile> pickedMedia = [];

    try {
      // pickedMedia = await ImagePicker().pickMedia(
      //   source: ImageSource.gallery,
      //   mediaType: MediaType.Video, // Use MediaType.video for videos
      //   maxImages: 10,
      // );
    } catch (e) {
      // Handle exceptions
    }

    if (!mounted) return;

    setState(() {
      selectedMedia = pickedMedia;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Post'),
        actions: [
          ElevatedButton(
            onPressed: () {
              // Implement post logic here
            },
            child: Text('Post'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Button to open media picker
            ElevatedButton(
              onPressed: _pickMedia,
              child: Text('Pick Media'),
            ),
            // Grid to display selected media
            Container(
            height: 300,
            child: GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    ),
    itemCount: selectedMedia.length,
    itemBuilder: (BuildContext context, int index) {
    return Image.file(
    File(selectedMedia[index].path),
    width: 100,
    height: 100,
    );
    })
            // GridView.builder(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 3,
            //   ),
            //   itemCount: selectedMedia.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return AssetThumb(
            //       asset: selectedMedia[index],
            //       width: 100,
            //       height: 100,
            //     );
            //   },
            // ),
            )],
        ),
      ),
    );
  }
}
