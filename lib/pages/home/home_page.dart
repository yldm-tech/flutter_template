import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildKey(
    Color color,
    String soundName,
    String name,
  ) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
        ),
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('wav/note$soundName.wav'));
        },
        child:  Text(name),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'xylophone',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, "1", "Do"),
              buildKey(Colors.orange, "2", "Re"),
              buildKey(Colors.yellow, "3", "Mi"),
              buildKey(Colors.green, "4", "Fa"),
              buildKey(Colors.teal, "5", "Sol"),
              buildKey(Colors.blue, "6", "La"),
              buildKey(Colors.purple, "7", "Si"),
            ],
          ),
        ),
      ),
    );
  }
}
