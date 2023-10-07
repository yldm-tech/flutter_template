import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// 缓存网络图片
/// 依赖于 https://pub.dev/packages/cached_network_image
/// 如果这个库不好用了，可以考虑换一个更好用的
class YldmCachedNetworkImage extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final Widget placeholder;
  final Widget errorWidget;

  const YldmCachedNetworkImage(
    this.url, {
    super.key,
    this.placeholder = const CircularProgressIndicator(),
    this.errorWidget = const Icon(Icons.error, size: 200),
    this.width = 200,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        height: height,
        width: width,
        imageUrl: url,
        fit: BoxFit.cover,
        placeholder: (context, url) => placeholder,
        errorWidget: (context, url, error) => errorWidget);
  }
}
