import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:stjohns_conference/domain/video/video.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideContainerWidget extends StatefulWidget {
  final Video video;
  final VoidCallback? onVideoEnd;

  const VideContainerWidget({required this.video, this.onVideoEnd, Key? key}) : super(key: key);

  @override
  _VideContainerWidgetState createState() => _VideContainerWidgetState();
}

class _VideContainerWidgetState extends State<VideContainerWidget> {
  YoutubePlayerController? _youtubePlayerController;

  late VideoPlayerController _videoPlayerController;

  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    print('Video Container Initiated');
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _youtubePlayerController = widget.video.videoId != null
        ? YoutubePlayerController(
            initialVideoId: widget.video.videoId!,
            params: const YoutubePlayerParams(
              showControls: false,
              showVideoAnnotations: false,
            ),
          )
        : null;
    if (_youtubePlayerController == null) {
      _videoPlayerController = VideoPlayerController.network(
        widget.video.videoUrl!,
      );
      await _videoPlayerController.initialize();
      _createChewieController();
    } else {
      _youtubePlayerController?.listen((event) {
        print('Checking Player State');
        if (event.playerState == PlayerState.ended) {
          widget.onVideoEnd?.call();
        }
      });
    }
    setState(() {});
  }

  _createChewieController() {
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      allowFullScreen: false,
    );
    _videoPlayerController.addListener(() {
      if (_videoPlayerController.value.position == _videoPlayerController.value.duration) {
        widget.onVideoEnd?.call();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return _youtubePlayerController != null
        ? YoutubePlayerIFrame(
            controller: _youtubePlayerController,
          )
        : _chewieController != null && _chewieController!.videoPlayerController.value.isInitialized
            ? Chewie(
                controller: _chewieController!,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                  Text('Loading'),
                ],
              );
  }
}
