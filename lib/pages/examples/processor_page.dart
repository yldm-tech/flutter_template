import 'package:bilibili/utils/yldm/toast_util.dart';
import 'package:bilibili/widgets/yldm_container.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ExampleProcessorPage extends StatefulWidget {
  const ExampleProcessorPage({super.key});

  @override
  State<ExampleProcessorPage> createState() => _ExampleProcessorPageState();
}

class _ExampleProcessorPageState extends State<ExampleProcessorPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        container("线性进度条"),
        Column(
          children: [
            YldmContainer(
              padding: const EdgeInsets.all(10),
              child: GFProgressBar(
                  percentage: 0.9,
                  backgroundColor: Colors.black26,
                  progressBarColor: GFColors.DANGER),
            ),
            YldmContainer(
              padding: const EdgeInsets.all(10),
              child: GFProgressBar(
                  percentage: 0.9,
                  backgroundColor: Colors.black26,
                  progressBarColor: GFColors.INFO),
            ),
            YldmContainer(
              padding: const EdgeInsets.all(10),
              child: GFProgressBar(
                  percentage: 0.9,
                  backgroundColor: Colors.black26,
                  progressBarColor: GFColors.SECONDARY),
            ),
            YldmContainer(
              padding: const EdgeInsets.all(10),
              child: GFProgressBar(
                  percentage: 0.9,
                  backgroundColor: Colors.black26,
                  progressBarColor: GFColors.SUCCESS),
            ),
            YldmContainer(
              padding: const EdgeInsets.all(10),
              child: GFProgressBar(
                  percentage: 0.9,
                  backgroundColor: Colors.black26,
                  progressBarColor: GFColors.FOCUS),
            ),
          ],
        ),
        container("自定义进度条"),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: GFProgressBar(
                percentage: 0.5,
                lineHeight: 20,
                backgroundColor: Colors.black26,
                progressBarColor: GFColors.FOCUS,
                child: const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    '50%',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: GFProgressBar(
                percentage: 0.5,
                lineHeight: 20,
                backgroundColor: Colors.black26,
                progressBarColor: GFColors.DANGER,
                child: const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    '50%',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: GFProgressBar(
                percentage: 0.5,
                lineHeight: 20,
                backgroundColor: Colors.black26,
                progressBarColor: GFColors.SUCCESS,
                child: const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    '50%',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: GFProgressBar(
                percentage: 0.5,
                lineHeight: 20,
                backgroundColor: Colors.black26,
                progressBarColor: GFColors.SECONDARY,
                child: const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    '50%',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: GFProgressBar(
                percentage: 0.5,
                lineHeight: 20,
                backgroundColor: Colors.black26,
                progressBarColor: GFColors.PRIMARY,
                child: const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    '50%',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: GFProgressBar(
                percentage: 0.5,
                lineHeight: 20,
                backgroundColor: Colors.black26,
                progressBarColor: GFColors.WARNING,
                child: const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    '50%',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        container("圆形进度条"),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Wrap(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: GFProgressBar(
                  percentage: 0.6,
                  width: 100,
                  radius: 90,
                  backgroundColor: Colors.black38,
                  progressBarColor: Colors.green,
                  type: GFProgressType.circular,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  toast(content) {
    ToastUtil.centerToast(content, context);
  }

  container(String title) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 20, bottom: 10),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
