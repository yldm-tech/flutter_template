import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// 动画容器
/// 具体内容放在child中
/// https://lottiefiles.com/animation/loading
/// 可以随时替换动画
class YldmLoadingContainer extends StatelessWidget {
  final Widget child; // 具体内容
  final bool isLoading; // 是否显示动画
  final bool isGlobal; // 是否全局动画
  const YldmLoadingContainer({
    super.key,
    required this.child,
    required this.isLoading,
    this.isGlobal = false,
  });

  loading() {
    return isLoading
        ? SafeArea(
            child: Center(child: Lottie.asset('assets/lottie/loading.json')))
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
      return isLoading ? loading() : SafeArea(child: child);
    }
  }
}
