import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class BannerModel {
  final String cover;
  final String url;

  const BannerModel({required this.cover, this.url = ''});
}

/// banner组件
class YldmSlider extends StatefulWidget {
  final List<BannerModel> sliderList; // banner数据
  final bool autoPlay; // 是否自动播放
  final bool hasPagination;

  const YldmSlider({
    super.key,
    required this.sliderList, // banner数据
    this.autoPlay = true, // 是否自动播放
    this.hasPagination = true,
  });

  @override
  State<YldmSlider> createState() => _YldmSliderState();
}

class _YldmSliderState extends YldmState<YldmSlider> {
  @override
  Widget build(BuildContext context) {
    return GFCarousel(
      autoPlay: widget.autoPlay,
      viewportFraction: 1.0,
      hasPagination: widget.hasPagination,
      activeIndicator: Colors.white,
      autoPlayCurve: Curves.fastOutSlowIn,
      autoPlayInterval: const Duration(seconds: 3),
      items: widget.sliderList.map(
        (data) {
          return Container(
            margin: const EdgeInsets.all(8.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Image.network(data.cover,
                    fit: BoxFit.cover, width: 1000.0)),
          );
        },
      ).toList(),
    );
  }
}

List<BannerModel> sliderDemoData = [
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
