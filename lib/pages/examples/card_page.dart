import 'package:bilibili/widgets/yldm_poster.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';

class ExampleCardPage extends StatefulWidget {
  const ExampleCardPage({super.key});

  @override
  State<ExampleCardPage> createState() => _ExampleCardPageState();
}

class _ExampleCardPageState extends State<ExampleCardPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        YldmPoster(
          avatar: NetworkImage(
              'https://cdn.pixabay.com/photo/2016/11/29/05/45/astronomy-1867616_960_720.jpg'),
          name: 'Game Controllers',
          desc: 'Game Controllers',
          poster: 'https://static.yldm.tech/uPic/bilibili/banner3.png',
          content:
              'Some quick example text to build on the card title and make up the bulk of the card\'s content.',
          buttonBar: GFButtonBar(
            children: <Widget>[
              GFAvatar(
                backgroundColor: GFColors.PRIMARY,
                child: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
              GFAvatar(
                backgroundColor: GFColors.SECONDARY,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              GFAvatar(
                backgroundColor: Colors.blue,
                child: Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                ),
              ),
              GFAvatar(
                backgroundColor: GFColors.SUCCESS,
                child: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
              ),
              GFAvatar(
                backgroundColor: Colors.blue,
                child: Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
