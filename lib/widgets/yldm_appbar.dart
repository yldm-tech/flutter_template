import 'package:flutter/material.dart';

appBar(String leftTitle, String rightTitle, VoidCallback rightButtonClick) {
  return AppBar(
    centerTitle: false,
    titleSpacing: 0,
    leading: const BackButton(),
    title: Text(
      leftTitle,
      style: const TextStyle(fontSize: 18),
    ),
    actions: [
      InkWell(
        onTap: rightButtonClick,
        child: Container(
          padding: const EdgeInsets.only(right: 20),
          alignment: Alignment.center,
          child: Text(
            rightTitle,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[500],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ],
  );
}
