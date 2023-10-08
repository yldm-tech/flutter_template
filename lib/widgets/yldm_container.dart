import 'package:flutter/material.dart';

class YldmContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  const YldmContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(2),
    this.margin = const EdgeInsets.all(1),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      child: child,
    );
  }
}
