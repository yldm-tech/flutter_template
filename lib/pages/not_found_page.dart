import 'package:flutter/material.dart';
import '../application.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("404"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("您访问的页面不存在"),
            TextButton(
                onPressed: () =>
                    {Application.router.navigateTo(context, '/home')},
                child: const Text("返回首页"))
          ],
        ),
      ),
    );
  }
}
