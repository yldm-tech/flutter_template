import 'package:bilibili/utils/yldm/toast_util.dart';
import 'package:bilibili/widgets/yldm_container.dart';
import 'package:bilibili/widgets/yldm_lottie.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ExampleLoadingPage extends StatefulWidget {
  const ExampleLoadingPage({super.key});

  @override
  State<ExampleLoadingPage> createState() => _ExampleLoadingPageState();
}

class _ExampleLoadingPageState extends State<ExampleLoadingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      container("圆点动画"),
      const Row(
        children: [
          YldmContainer(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: GFLoader(
              type: GFLoaderType.circle,
              loaderColorOne: Colors.red,
              loaderColorTwo: Colors.green,
              loaderColorThree: Colors.blue,
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 20),
            child: GFLoader(
              type: GFLoaderType.circle,
              loaderColorOne: Colors.pink,
              loaderColorTwo: Colors.orange,
              loaderColorThree: Colors.deepPurpleAccent,
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 20),
            child: GFLoader(
              type: GFLoaderType.circle,
              loaderColorOne: Colors.green,
              loaderColorTwo: Colors.greenAccent,
              loaderColorThree: Colors.deepPurple,
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 20),
            child: GFLoader(
              type: GFLoaderType.circle,
              loaderColorOne: Colors.deepOrangeAccent,
              loaderColorTwo: Colors.purpleAccent,
              loaderColorThree: Colors.tealAccent,
            ),
          ),
        ],
      ),
      container("方形动画"),
      const Row(
        children: [
          YldmContainer(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: GFLoader(
              type: GFLoaderType.square,
              loaderColorOne: Colors.red,
              loaderColorTwo: Colors.green,
              loaderColorThree: Colors.blue,
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 20),
            child: GFLoader(
              type: GFLoaderType.square,
              loaderColorOne: Colors.pink,
              loaderColorTwo: Colors.orange,
              loaderColorThree: Colors.deepPurpleAccent,
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 20),
            child: GFLoader(
              type: GFLoaderType.square,
              loaderColorOne: Colors.green,
              loaderColorTwo: Colors.greenAccent,
              loaderColorThree: Colors.deepPurple,
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 20),
            child: GFLoader(
              type: GFLoaderType.square,
              loaderColorOne: Colors.deepOrangeAccent,
              loaderColorTwo: Colors.purpleAccent,
              loaderColorThree: Colors.tealAccent,
            ),
          ),
        ],
      ),
      container("圆形动画"),
      const Row(
        children: [
          YldmContainer(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: GFLoader(
              type: GFLoaderType.android,
              androidLoaderColor:
                  AlwaysStoppedAnimation<Color>(Colors.purpleAccent),
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 10),
            child: GFLoader(
              type: GFLoaderType.android,
              androidLoaderColor:
                  AlwaysStoppedAnimation<Color>(Colors.indigoAccent),
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 10),
            child: GFLoader(
              type: GFLoaderType.android,
              androidLoaderColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 10),
            child: GFLoader(
              type: GFLoaderType.android,
              androidLoaderColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
          YldmContainer(
            child: GFLoader(
              type: GFLoaderType.android,
              androidLoaderColor: AlwaysStoppedAnimation<Color>(Colors.pink),
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 10),
            child: GFLoader(
              type: GFLoaderType.android,
              androidLoaderColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 10),
            child: GFLoader(
              type: GFLoaderType.android,
              androidLoaderColor:
                  AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 10),
            child: GFLoader(
              type: GFLoaderType.android,
              androidLoaderColor: AlwaysStoppedAnimation<Color>(Colors.brown),
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 10),
            child: GFLoader(
              type: GFLoaderType.android,
              androidLoaderColor: AlwaysStoppedAnimation<Color>(Colors.cyan),
            ),
          ),
          YldmContainer(
            margin: EdgeInsets.only(right: 10),
            child: GFLoader(
              type: GFLoaderType.android,
              androidLoaderColor:
                  AlwaysStoppedAnimation<Color>(Colors.greenAccent),
            ),
          ),
        ],
      ),
      container("IOS动画"),
      const Row(
        children: [
          YldmContainer(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: GFLoader(
                size: GFSize.LARGE,
                type: GFLoaderType.ios,
              )),
          YldmContainer(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: GFLoader(
                size: GFSize.MEDIUM,
                type: GFLoaderType.ios,
              )),
          YldmContainer(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: GFLoader(
                size: GFSize.SMALL,
                type: GFLoaderType.ios,
              )),
          YldmContainer(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: GFLoader(
                size: 25,
                type: GFLoaderType.ios,
              )),
          YldmContainer(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: GFLoader(
                size: 20,
                type: GFLoaderType.ios,
              )),
          YldmContainer(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: GFLoader(
                size: 10,
                type: GFLoaderType.ios,
              )),
        ],
      ),
      container("自定义动画"),
      const Row(
        children: [
          YldmContainer(
            margin: EdgeInsets.only(left: 10),
            child: GFLoader(
              type: GFLoaderType.custom,
              loaderIconOne: Text('Please'),
              loaderIconTwo: Text('Wait'),
              loaderIconThree: Text('a moment'),
            ),
          ),
          YldmContainer(child: YldmLottie(url: "assets/lottie/ball.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/cat.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/cube.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/cup.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/cycle.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/done.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/earth.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/loading.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/point1.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/point2.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/point3.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/point4.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/point6.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/point7.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/point8.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/point9.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/point10.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/qr.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/react.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/robot.json")),
          YldmContainer(
              child: YldmLottie(url: "assets/lottie/running_man.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/water.json")),
          YldmContainer(child: YldmLottie(url: "assets/lottie/work.json")),
        ],
      )
    ]);
  }

  toast(content) {
    ToastUtil.centerToast(content, context);
  }

  container(String title) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 50, bottom: 10),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
