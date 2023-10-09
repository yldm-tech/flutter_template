import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class YldmLottie extends StatelessWidget {
  final String url;
  const YldmLottie({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(url);
  }
}
