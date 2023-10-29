import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:myetc/utils/state/yldm_state.dart';

class BannerModel {
  final Widget cover;
  final String? url;

  const BannerModel({required this.cover, this.url});
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
                child: data.cover),
          );
        },
      ).toList(),
    );
  }
}

List<BannerModel> sliderDemoData = [
  BannerModel(
    cover: Image.network('https://static.yldm.tech/uPic/bilibili/banner1.png',
        fit: BoxFit.cover, width: 1000.0),
  ),
  BannerModel(
    cover: Image.network('https://static.yldm.tech/uPic/bilibili/banner2.png',
        fit: BoxFit.cover, width: 1000.0),
  ),
  BannerModel(
    cover: Image.network('https://static.yldm.tech/uPic/bilibili/banner3.png',
        fit: BoxFit.cover, width: 1000.0),
  ),
  BannerModel(
    cover: Image.network('https://static.yldm.tech/uPic/bilibili/banner1.png',
        fit: BoxFit.cover, width: 1000.0),
  ),
  BannerModel(
    cover: Image.network('https://static.yldm.tech/uPic/bilibili/banner2.png',
        fit: BoxFit.cover, width: 1000.0),
  ),
  BannerModel(
    cover: Image.network('https://static.yldm.tech/uPic/bilibili/banner3.png',
        fit: BoxFit.cover, width: 1000.0),
  ),
];

List<BannerModel> sliderTextDemoData = [
  BannerModel(
    cover: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.purple,
      ),
      width: 1000,
      child: const Center(
        child: Text(
          '公告1',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    ),
  ),
  BannerModel(
    cover: Container(
        width: 1000,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.blue,
        ),
        child: const Center(
            child: Text(
          '公告2',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ))),
  ),
  BannerModel(
    cover: Container(
        width: 1000,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.red,
        ),
        child: const Center(
            child: Text(
          '公告3',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ))),
  ),
  BannerModel(
    cover: Container(
        width: 1000,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.orange,
        ),
        child: const Center(
            child: Text(
          '公告4',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ))),
  ),
  BannerModel(
    cover: Container(
        width: 1000,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.pink,
        ),
        child: const Center(
            child: Text(
          '公告5',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ))),
  ),
];
