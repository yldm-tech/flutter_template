import 'package:bilibili/widgets/yldm_banner.dart';
import 'package:flutter/material.dart';

class ExampleSliderPage extends StatefulWidget {
  const ExampleSliderPage({super.key});

  @override
  State<ExampleSliderPage> createState() => _ExampleSliderPageState();
}

class _ExampleSliderPageState extends State<ExampleSliderPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        YldmBanner(bannerList: bannerDemoData),
      ],
    );
  }
}
