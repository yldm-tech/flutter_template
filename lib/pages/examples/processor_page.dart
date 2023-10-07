import 'package:flutter/material.dart';

class ExampleProcessorPage extends StatefulWidget {
  const ExampleProcessorPage({super.key});

  @override
  State<ExampleProcessorPage> createState() => _ExampleProcessorPageState();
}

class _ExampleProcessorPageState extends State<ExampleProcessorPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LinearProgressIndicator(),
        SizedBox(height: 10),
        CircularProgressIndicator(),
        SizedBox(height: 10),
        RefreshProgressIndicator(),
      ],
    );
  }
}
