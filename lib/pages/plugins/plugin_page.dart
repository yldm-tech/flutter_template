import 'package:flutter/material.dart';
import 'package:myetc/widgets/yldm_poster.dart';

class PluginPage extends StatelessWidget {
  const PluginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      YldmPoster(
        avatar: NetworkImage(
            "https://res.cloudinary.com/practicaldev/image/fetch/s--bc9qVmBy--/c_imagga_scale,f_auto,fl_progressive,h_1080,q_auto,w_1080/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/vtdsxl7gw6b3hbncby9j.png"),
        name: "fluro",
        desc: "The brightest, hippest, coolest router for Flutter.",
        content:
            "fluro is a Flutter routing library that adds flexible routing options like wildcards, named parameters and clear route definitions. Fluro works with Flutter's Navigator class. Check out the docs on fluro.io for more info on using fluro.",
      )
    ]);
  }
}
