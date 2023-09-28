import 'package:flutter/material.dart';

import '../configs/routes.dart';

class PageContent extends StatelessWidget {
  final String name;
  const PageContent({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(name),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                  onPressed: () => {Navigator.pushNamed(context, Routes.home)},
                  child: const Text("home")),
              TextButton(
                  onPressed: () => {Navigator.pushNamed(context, Routes.login)},
                  child: const Text("login")),
              TextButton(
                  onPressed: () => {Navigator.pushNamed(context, "123123")},
                  child: const Text("not found")),
            ]),
      ),
    );
  }
}
