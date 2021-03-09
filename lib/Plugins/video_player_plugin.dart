import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPlugin extends StatefulWidget {
  @override
  _VideoPlayerPluginState createState() => _VideoPlayerPluginState();
}

class _VideoPlayerPluginState extends State<VideoPlayerPlugin> {
  VideoPlayerController _videoPlayerController;
  Future<void> _initializeController;
  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    _initializeController = _videoPlayerController.initialize();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player Plugin'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_videoPlayerController.value.isPlaying) {
            setState(() {
              _videoPlayerController.pause();
            });
          } else {
            setState(() {
              _videoPlayerController.play();
            });
          }
        },
        child: _videoPlayerController.value.isPlaying
            ? Icon(Icons.pause)
            : Icon(Icons.play_arrow),
      ),
      body: FutureBuilder(
        future: _initializeController,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
