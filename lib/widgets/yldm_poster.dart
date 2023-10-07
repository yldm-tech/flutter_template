import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class YldmPoster extends StatefulWidget {
  final String avatar;
  final String name;
  final String desc;
  final String poster;
  final String content;
  final GFButtonBar? buttonBar;

  const YldmPoster({
    super.key,
    required this.avatar,
    required this.name,
    required this.desc,
    required this.poster,
    required this.content,
    this.buttonBar,
  });

  @override
  State<YldmPoster> createState() => _YldmPosterState();
}

class _YldmPosterState extends State<YldmPoster> {
  @override
  Widget build(BuildContext context) {
    return GFCard(
      boxFit: BoxFit.cover,
      titlePosition: GFPosition.start,
      image: Image.network(
        widget.avatar,
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      showImage: true,
      title: GFListTile(
        avatar: GFAvatar(
          backgroundImage: NetworkImage(widget.avatar),
        ),
        titleText: widget.name,
        subTitleText: widget.desc,
      ),
      content: Text(widget.content),
      buttonBar: widget.buttonBar,
    );
  }
}
