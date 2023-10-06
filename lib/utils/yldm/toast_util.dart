import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtil {
  static toast(
    String msg,
    BuildContext context, {
    Toast duration = Toast.LENGTH_SHORT,
    ToastGravity position = ToastGravity.CENTER,
    Color textColor = Colors.white,
    double fontSize = 30.0,
    bgColor,
  }) {
    Fluttertoast.showToast(
      msg: msg,
      gravity: position,
      toastLength: duration,
      textColor: textColor,
      fontSize: fontSize,
    );
  }

  static centerToast(
    String msg,
    BuildContext context, {
    duration = Toast.LENGTH_SHORT,
    textColor = Colors.white,
    fontSize = 16.0,
    bgColor,
  }) {
    toast(
      msg,
      context,
      position: ToastGravity.CENTER,
      duration: duration,
      textColor: textColor,
      bgColor: bgColor,
      fontSize: fontSize,
    );
  }

  static topToast(
    String msg,
    BuildContext context, {
    duration = 1,
    textColor = Colors.white,
    fontSize = 16.0,
    bgColor,
  }) {
    toast(
      msg,
      context,
      position: ToastGravity.TOP,
      duration: duration,
      textColor: textColor,
      bgColor: bgColor,
      fontSize: fontSize,
    );
  }

  static bottomToast(
    String msg,
    BuildContext context, {
    duration = 1,
    textColor = Colors.black,
    fontSize = 16.0,
    bgColor,
  }) {
    toast(
      msg,
      context,
      position: ToastGravity.BOTTOM,
      duration: duration,
      textColor: textColor,
      bgColor: bgColor,
      fontSize: fontSize,
    );
  }

  static longToast(
    String msg,
    BuildContext context, {
    position = 1,
    textColor = Colors.white,
    fontSize = 16.0,
    bgColor,
  }) {
    toast(
      msg,
      context,
      duration: Toast.LENGTH_LONG,
      textColor: textColor,
      bgColor: bgColor,
      fontSize: fontSize,
    );
  }

  static cancel() {
    Fluttertoast.cancel();
  }
}
