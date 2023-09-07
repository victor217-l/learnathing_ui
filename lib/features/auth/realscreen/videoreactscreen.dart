
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:camera/camera.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Video and Camera React')),
        body: VideoWithCameraReact(),
      ),
    );
  }
}

class VideoWithCameraReact extends StatefulWidget {
  @override
  _VideoWithCameraReactState createState() => _VideoWithCameraReactState();
}

class _VideoWithCameraReactState extends State<VideoWithCameraReact> {
  late VideoPlayerController _videoController;
  late CameraController _cameraController;
  late List<CameraDescription> _cameras;

  @override
  void initState() {
    super.initState();
    initializeCamera();
    initializeVideo();
  }

  @override
  void dispose() {
    _videoController.dispose();
    _cameraController.dispose();
    super.dispose();
  }

  Future<void> initializeCamera() async {
    _cameras = await availableCameras();
    _cameraController = CameraController(_cameras[0], ResolutionPreset.medium);
    await _cameraController.initialize();
    if (mounted) setState(() {});
  }

  void initializeVideo() {
    _videoController = VideoPlayerController.network(
        'https://example.com/path/to/your/video.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    if (!_cameraController.value.isInitialized || !_videoController.value.isInitialized) {
      return Center(child: CircularProgressIndicator());
    }

    return Stack(
      children: [
        Center(
          child: AspectRatio(
            aspectRatio: _videoController.value.aspectRatio,
            child: VideoPlayer(_videoController),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: AspectRatio(
            aspectRatio: _cameraController.value.aspectRatio,
            child: CameraPreview(_cameraController),
          ),
        ),
      ],
    );
  }
}
