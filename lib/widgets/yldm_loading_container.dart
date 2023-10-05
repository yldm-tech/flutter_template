import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class YldmLoadingContainer extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  final bool isGlobal;
  const YldmLoadingContainer({
    super.key,
    required this.child,
    required this.isLoading,
    this.isGlobal = false,
  });

  loading() {
    return isLoading
        ? Center(
            child: Lottie.asset('assets/lottie/loading.json'),
          )
        : Container();
  }

  @override
  Widget build(BuildContext context) {
    if (isGlobal) {
      return Stack(
        children: [
          child,
          loading(),
        ],
      );
    } else {
      return isLoading ? loading() : child;
    }
  }
}
