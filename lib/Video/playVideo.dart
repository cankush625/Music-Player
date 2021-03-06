import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(
        'assets/videos/mountain.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });

    // Use the controller to loop the video.
    _videoController.setLooping(true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _videoController.value.initialized
              ? AspectRatio(
            aspectRatio: _videoController.value.aspectRatio,
            child: VideoPlayer(_videoController),
          )
              : Container(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Mountain time lapse',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox (
            width: 30,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _videoController.value.isPlaying
                    ? _videoController.pause()
                    : _videoController.play();
              });
            },
            child: Icon(
              _videoController.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _videoController.dispose();
  }
}