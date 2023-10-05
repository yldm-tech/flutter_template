import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

/// 视频播放器
/// https://pub.flutter-io.cn/packages/chewie
/// https://pub.flutter-io.cn/packages/video_player
///
class YldmVideoPlayer extends StatefulWidget {
  final String url;
  final String cover;
  final bool autoPlay;
  final bool looping;
  final bool allowFullScreen;
  final double aspectRatio;

  const YldmVideoPlayer(this.url,
      {super.key,
      required this.cover,
      this.autoPlay = false,
      this.looping = false,
      this.allowFullScreen = true,
      this.aspectRatio = 16 / 9});

  @override
  State<YldmVideoPlayer> createState() => _YldmVideoPlayerState();
}

class _YldmVideoPlayerState extends State<YldmVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.url));
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: widget.aspectRatio,
      autoPlay: widget.autoPlay,
      looping: widget.looping,
      allowFullScreen: widget.allowFullScreen,
      placeholder: Container(
        color: Colors.grey,
      ),
      // autoInitialize: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = width / widget.aspectRatio;
    return Container(
      width: width,
      height: height,
      color: Colors.grey,
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }
}
