import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class YldmPoster extends StatefulWidget {
  final ImageProvider avatar;
  final String name;
  final String desc;
  final String content;
  final String? poster;
  final GFButtonBar? buttonBar;

  @override
  State<YldmPoster> createState() => _YldmPosterState();

  const YldmPoster({
    super.key,
    required this.avatar,
    required this.name,
    required this.desc,
    required this.content,
    this.poster,
    this.buttonBar,
  });
}

class _YldmPosterState extends State<YldmPoster> {
  @override
  Widget build(BuildContext context) {
    return GFCard(
      boxFit: BoxFit.cover,
      titlePosition: GFPosition.start,
      image: widget.poster != null
          ? Image.network(
              widget.poster ?? '',
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            )
          : null,
      showImage: widget.poster != null,
      title: GFListTile(
        avatar: GFAvatar(
          backgroundImage: widget.avatar,
          shape: GFAvatarShape.standard,
          size: GFSize.LARGE,
        ),
        titleText: widget.name,
        subTitleText: widget.desc,
      ),
      content: Container(
          alignment: Alignment.centerLeft, child: Text(widget.content)),
      buttonBar: widget.buttonBar,
    );
  }
}
