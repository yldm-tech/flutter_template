import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class YldmLottie extends StatelessWidget {
  final String url;
  final double size;
  const YldmLottie({super.key, required this.url, this.size = 100.0});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(url, width: size, height: size, fit: BoxFit.fill);
  }
}
