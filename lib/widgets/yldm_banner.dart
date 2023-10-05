import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:bilibili/utils/yldm/yldm_util.dart';
import 'package:card_swiper/card_swiper.dart'; // https://pub.dev/packages/card_swiper
import 'package:flutter/material.dart';

class BannerModel {
  final String title;
  final String cover;
  final String url;

  const BannerModel({this.title = '', required this.cover, this.url = ''});
}

/// banner组件
/// 依赖于 https://pub.dev/packages/card_swiper
/// 如果这个库不好用了，可以考虑换一个更好用的
class YldmBanner extends StatefulWidget {
  final List<BannerModel> bannerList; // banner数据
  final double bannerHeight; // banner高度
  final bool networkImage; // 是否是网络图片
  final EdgeInsetsGeometry? padding; // 内边距
  final SwiperControl? control; // 控制器
  final SwiperPagination? pagination; // 分页器
  final VoidCallback? onTap; // 点击事件
  final double radius; // 圆角

  const YldmBanner({
    super.key,
    required this.bannerList, // banner数据
    this.padding, // 内边距
    this.control, // 控制器
    this.pagination, // 分页器
    this.networkImage = true, // 是否是网络图片
    this.onTap, // 点击事件
    this.bannerHeight = 200, // banner高度
    this.radius = 30, // 圆角
  });

  @override
  State<YldmBanner> createState() => _YldmBannerState();
}

class _YldmBannerState extends YldmState<YldmBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: widget.padding,
        height: widget.bannerHeight,
        child: Swiper(
          itemCount: widget.bannerList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                if (widget.onTap != null) {
                  widget.onTap!();
                }
                Yldm.log('点击了第$index个banner');
              },
              child: ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(widget.radius),
                child: widget.networkImage
                    ? Image.network(
                        widget.bannerList[index].cover,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        widget.bannerList[index].cover,
                        fit: BoxFit.cover,
                      ),
              ),
            );
          },
          pagination: widget.pagination ?? const SwiperPagination(),
          control: widget.control ?? const SwiperControl(),
          autoplay: true,
        ));
  }
}

List<BannerModel> bannerDemoData = [
  const BannerModel(
    cover: 'https://static.yldm.tech/uPic/bilibili/banner1.png',
  ),
  const BannerModel(
    cover: 'https://static.yldm.tech/uPic/bilibili/banner2.png',
  ),
  const BannerModel(
    cover: 'https://static.yldm.tech/uPic/bilibili/banner3.png',
  ),
  const BannerModel(
    cover: 'https://static.yldm.tech/uPic/bilibili/banner1.png',
  ),
  const BannerModel(
    cover: 'https://static.yldm.tech/uPic/bilibili/banner2.png',
  ),
  const BannerModel(
    cover: 'https://static.yldm.tech/uPic/bilibili/banner3.png',
  ),
];
