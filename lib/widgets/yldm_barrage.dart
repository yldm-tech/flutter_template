import 'package:flutter/material.dart';

class YldmBarrage extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final ValueChanged onComplete;

  const YldmBarrage({super.key,
    required this.child,
    required this.duration,
    required this.onComplete});

  @override
  State<YldmBarrage> createState() => _YldmBarrageState();
}

class _YldmBarrageState extends State<YldmBarrage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: widget.duration);
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.onComplete(widget.child);
      }
    });
    _animation =
        Tween<Offset>(begin: const Offset(1, 0), end: const Offset(-1, 0))
            .animate(_animationController);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
