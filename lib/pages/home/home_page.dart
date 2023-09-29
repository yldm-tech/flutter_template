import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('MI Card'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage('https://image.xiaomo.info/logo/logo.png'),
              ),
              const Text(
                'Evan Hu',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSan3',
                  fontSize: 18,
                  color: Colors.teal.shade100,
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+86 123 456 789',
                      style: TextStyle(
                        fontFamily: 'SourceSan3',
                        fontSize: 18,
                        color: Colors.teal.shade900,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '123456@gmail.com',
                      style: TextStyle(
                        fontFamily: 'SourceSan3',
                        fontSize: 18,
                        color: Colors.teal.shade900,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
