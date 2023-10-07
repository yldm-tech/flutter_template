import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class BannerModel {
  final String title;
  final String cover;
  final String url;

  const BannerModel({required this.cover, this.title = '', this.url = ''});
}

/// banner组件
class YldmBanner extends StatefulWidget {
  final List<BannerModel> bannerList; // banner数据
  final VoidCallback? onTap; // 点击事件
  final bool autoPlay; // 是否自动播放
  final bool hasPagination;

  const YldmBanner({
    super.key,
    required this.bannerList, // banner数据
    this.autoPlay = true, // 是否自动播放
    this.hasPagination = true,
    this.onTap, // 点击事件
  });

  @override
  State<YldmBanner> createState() => _YldmBannerState();
}

class _YldmBannerState extends YldmState<YldmBanner> {
  @override
  Widget build(BuildContext context) {
    return GFCarousel(
      autoPlay: widget.autoPlay,
      viewportFraction: 1.0,
      hasPagination: widget.hasPagination,
      activeIndicator: Colors.white,
      autoPlayCurve: Curves.fastOutSlowIn,
      autoPlayInterval: const Duration(seconds: 3),
      items: bannerDemoData.map(
        (data) {
          return GestureDetector(
            onTap: () {
              if (widget.onTap != null) {
                widget.onTap!();
              }
            },
            child: Container(
              margin: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child:
                    Image.network(data.cover, fit: BoxFit.cover, width: 1000.0),
              ),
            ),
          );
        },
      ).toList(),
      onPageChanged: (index) {
        setState(() {
          index;
        });
      },
    );
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
