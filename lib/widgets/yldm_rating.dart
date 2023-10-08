import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class YldmRating extends StatefulWidget {
  final IconData icon;
  final double size;
  final Color color;
  final double score;
  final ValueChanged<double>? onChanged;

  const YldmRating({
    super.key,
    this.icon = Icons.star,
    this.score = 0,
    this.size = 35,
    this.color = Colors.green,
    this.onChanged,
  });

  @override
  State<YldmRating> createState() => _YldmRatingState();
}

class _YldmRatingState extends State<YldmRating> {
  double _rating = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _rating = widget.score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: GFRating(
        value: _rating,
        defaultIcon: Icon(
          widget.icon,
          color: Colors.grey[300],
          size: widget.size,
        ),
        filledIcon: Icon(
          widget.icon,
          color: widget.color,
          size: widget.size,
        ),
        onChanged: (value) {
          setState(() {
            _rating = value;
            widget.onChanged?.call(value);
          });
        },
      ),
    );
  }
}
