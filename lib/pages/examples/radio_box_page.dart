import 'package:flutter/material.dart';
import 'package:myetc/widgets/yldm_radio.dart';

class ExampleRadioPage extends StatefulWidget {
  const ExampleRadioPage({super.key});

  @override
  State<ExampleRadioPage> createState() => _ExampleRadioPageState();
}

class _ExampleRadioPageState extends State<ExampleRadioPage> {
  int value = 0;
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    final List<RadioItem> items = [
      RadioItem('Radio 1', 1),
      RadioItem('Radio 2', 2),
      RadioItem('Radio 3', 3),
      RadioItem('Radio 4', 4),
      RadioItem('Radio 5', 5),
      RadioItem('Radio 6', 6),
    ];

    return YldmRadio(
        items: items, onChanged: (val) => debugPrint(val as String?));
  }
}
