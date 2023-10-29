import 'package:flutter/material.dart';
import 'package:myetc/widgets/yldm_search_box.dart';

class ExampleSearchBoxPage extends StatefulWidget {
  const ExampleSearchBoxPage({super.key});

  @override
  State<ExampleSearchBoxPage> createState() => _ExampleSearchBoxPageState();
}

class _ExampleSearchBoxPageState extends State<ExampleSearchBoxPage> {
  @override
  Widget build(BuildContext context) {
    return const YldmSearchBox(items: ["a", "b", "c", "d", "e", "f", "g"]);
  }
}
