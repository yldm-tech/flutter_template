import 'package:flutter/material.dart';

class YldmContainer extends StatelessWidget {
  final Widget child;

  const YldmContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.all(1),
      child: child,
    );
  }
}
