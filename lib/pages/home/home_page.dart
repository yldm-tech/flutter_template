import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftIndex = 1;
  int rightIndex = 1;

  void changeDicee(){
    var left = Random().nextInt(6) + 1;
    var right = Random().nextInt(6) + 1;
    setState(() {
      leftIndex = left;
      rightIndex = right;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Dicee',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: changeDicee,
                child: Image(
                  image: AssetImage('assets/images/dice$leftIndex.png'),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: changeDicee,
                child: Image(
                  image: AssetImage('assets/images/dice$rightIndex.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
