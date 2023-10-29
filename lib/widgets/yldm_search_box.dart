import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class YldmSearchBox extends StatefulWidget {
  final List<String?> items;

  const YldmSearchBox({super.key, required this.items});

  @override
  State<YldmSearchBox> createState() => _YldmSearchBoxState();
}

class _YldmSearchBoxState extends State<YldmSearchBox> {
  @override
  Widget build(BuildContext context) {
    return GFSearchBar(
      overlaySearchListHeight: 45 * widget.items.length.toDouble(),
      searchList: widget.items,
      searchQueryBuilder: (query, list) {
        return list
            .where((item) => item!.toLowerCase().contains(query.toLowerCase()))
            .toList();
      },
      overlaySearchListItemBuilder: (item) {
        return Container(
          padding: const EdgeInsets.all(8),
          child: Text(
            item?.toString() ?? "",
            style: const TextStyle(fontSize: 18),
          ),
        );
      },
      onItemSelected: (item) {
        setState(() {
          debugPrint(item);
        });
      },
    );
  }
}
