import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class RadioItem {
  final String label;
  final int index;

  RadioItem(
    this.label,
    this.index,
  );
}

class YldmRadio extends StatefulWidget {
  final List<RadioItem> items;
  final ValueChanged<int>? onChanged;

  const YldmRadio({super.key, required this.items, this.onChanged});

  @override
  State<YldmRadio> createState() => _YldmRadioState();
}

class _YldmRadioState extends State<YldmRadio> {
  int groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return GFCard(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widget.items
            .map(
              (item) => Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: GFRadio(
                        activeBorderColor: GFColors.SUCCESS,
                        value: item.index,
                        groupValue: groupValue,
                        onChanged: (val) {
                          setState(() {
                            groupValue = val;
                          });
                          widget.onChanged!(val);
                        },
                        inactiveIcon: null,
                        radioColor: GFColors.SUCCESS,
                      ),
                    ),
                    Text(item.label),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
