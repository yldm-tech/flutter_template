import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ExampleAnimationPage extends StatefulWidget {
  const ExampleAnimationPage({super.key});

  @override
  State<ExampleAnimationPage> createState() => _ExampleAnimationPageState();
}

class _ExampleAnimationPageState extends State<ExampleAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  late Animation<Offset> offsetAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    controller.repeat();
    offsetAnimation = Tween<Offset>(
      begin: const Offset(-5, 0),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.linear,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GestureDetector(
          onTap: () {
            controller.repeat();
          },
          child: GFAnimation(
            turnsAnimation: animation,
            controller: controller,
            type: GFAnimationType.rotateTransition,
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/avatar.png',
                width: 80,
                height: 80,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            controller.repeat();
          },
          child: GFAnimation(
            scaleAnimation: animation,
            controller: controller,
            type: GFAnimationType.scaleTransition,
            child: Image.asset(
              'assets/images/avatar.png',
              width: 80,
              height: 80,
            ),
          ),
        ),
        GFAnimation(
          controller: controller,
          scaleAnimation: animation,
          duration: const Duration(seconds: 2),
          alignment: Alignment.bottomLeft,
          type: GFAnimationType.align,
          child: Image.asset(
            'assets/images/avatar.png',
            width: 80,
            height: 80,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: GFAnimation(
            controller: controller,
            slidePosition: offsetAnimation,
            type: GFAnimationType.slideTransition,
            child: Image.asset(
              'assets/images/avatar.png',
              width: 80,
              height: 80,
            ),
          ),
        ),
        GFAnimation(
          width: 50,
          changedWidth: 100,
          height: 50,
          changedHeight: 100,
          activeColor: Colors.transparent,
          color: Colors.transparent,
          fontSize: 30,
          type: GFAnimationType.container,
          child: Image.asset(
            'assets/images/avatar.png',
            width: 80,
            height: 80,
          ),
        ),
      ],
    );
  }
}
