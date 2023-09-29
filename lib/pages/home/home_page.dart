import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: const Row(
        children: [
          Expanded(
            flex: 2,
            child: Image(
              image: AssetImage('images/dice1.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Image(
              image: AssetImage('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
