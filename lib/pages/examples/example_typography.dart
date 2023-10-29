import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:myetc/utils/yldm/toast_util.dart';

class ExampleTypographyPage extends StatefulWidget {
  const ExampleTypographyPage({super.key});

  @override
  State<ExampleTypographyPage> createState() => _ExampleTypographyPageState();
}

class _ExampleTypographyPageState extends State<ExampleTypographyPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        container("基本版式"),
        const GFTypography(
          text: 'GF Header Typo1',
          type: GFTypographyType.typo1,
          dividerColor: Colors.transparent,
        ),
        const GFTypography(
          text: 'GF Header Typo2',
          type: GFTypographyType.typo2,
          dividerColor: Colors.transparent,
        ),
        const GFTypography(
          text: 'GF Header Typo3',
          type: GFTypographyType.typo3,
          dividerColor: Colors.transparent,
        ),
        const GFTypography(
          text: 'GF Header Typo4',
          type: GFTypographyType.typo4,
          dividerColor: Colors.transparent,
        ),
        const GFTypography(
          text: 'GF Header Typo5',
          type: GFTypographyType.typo5,
          dividerColor: Colors.transparent,
        ),
        const GFTypography(
          text: 'GF Header Typo6',
          type: GFTypographyType.typo6,
          dividerColor: Colors.transparent,
        ),
        container("带图标"),
        const GFTypography(
          text: 'GF Header Typo1',
          type: GFTypographyType.typo1,
          dividerColor: Colors.transparent,
          icon: Icon(Icons.send),
        ),
        const GFTypography(
          text: 'GF Header Typo2',
          type: GFTypographyType.typo2,
          dividerColor: Colors.transparent,
          icon: Icon(Icons.send),
        ),
        const GFTypography(
          text: 'GF Header Typo3',
          type: GFTypographyType.typo3,
          dividerColor: Colors.transparent,
          icon: Icon(Icons.send),
        ),
        const GFTypography(
          text: 'GF Header Typo4',
          type: GFTypographyType.typo4,
          dividerColor: Colors.transparent,
          icon: Icon(Icons.send),
        ),
        const GFTypography(
          text: 'GF Header Typo5',
          type: GFTypographyType.typo5,
          dividerColor: Colors.transparent,
          icon: Icon(Icons.send),
        ),
        const GFTypography(
          text: 'GF Header Typo6',
          type: GFTypographyType.typo6,
          dividerColor: Colors.transparent,
          icon: Icon(Icons.send),
        ),
        container("带背景图"),
        const GFTypography(
          text: 'GF Header Typo1',
          type: GFTypographyType.typo1,
          icon: Icon(Icons.send),
          dividerColor: Colors.transparent,
          backgroundImage: NetworkImage(
              'https://cdn.pixabay.com/photo/2016/11/29/05/45/astronomy-1867616_960_720.jpg'),
        ),
      ],
    );
  }

  toast(content) {
    ToastUtil.centerToast(content, context);
  }

  container(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
