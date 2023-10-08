import 'package:bilibili/utils/yldm/toast_util.dart';
import 'package:bilibili/widgets/yldm_rating.dart';
import 'package:flutter/material.dart';

class ExampleRatingPage extends StatefulWidget {
  const ExampleRatingPage({super.key});

  @override
  State<ExampleRatingPage> createState() => _ExampleRatingPageState();
}

class _ExampleRatingPageState extends State<ExampleRatingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        YldmRating(
            score: 5,
            size: 50,
            onChanged: (value) {
              ToastUtil.centerToast(value.toString(), context);
            }),
        YldmRating(
            score: 4,
            size: 45,
            color: Colors.pinkAccent,
            onChanged: (value) {
              ToastUtil.centerToast(value.toString(), context);
            }),
        YldmRating(
            score: 3,
            size: 40,
            color: Colors.blue,
            onChanged: (value) {
              ToastUtil.centerToast(value.toString(), context);
            }),
        YldmRating(
            score: 2,
            size: 35,
            color: Colors.orange,
            onChanged: (value) {
              ToastUtil.centerToast(value.toString(), context);
            }),
        YldmRating(
            score: 1,
            size: 30,
            color: Colors.purple,
            onChanged: (value) {
              ToastUtil.centerToast(value.toString(), context);
            }),
        YldmRating(
            score: 0,
            size: 25,
            onChanged: (value) {
              ToastUtil.centerToast(value.toString(), context);
            }),
        YldmRating(
            score: 0,
            size: 50,
            icon: Icons.yard_rounded,
            color: Colors.green,
            onChanged: (value) {
              ToastUtil.centerToast(value.toString(), context);
            }),
        YldmRating(
            score: 1,
            size: 50,
            icon: Icons.favorite,
            color: Colors.red,
            onChanged: (value) {
              ToastUtil.centerToast(value.toString(), context);
            }),
        YldmRating(
            score: 2,
            size: 50,
            icon: Icons.insert_emoticon,
            color: Colors.blue,
            onChanged: (value) {
              ToastUtil.centerToast(value.toString(), context);
            }),
        YldmRating(
            score: 3,
            size: 50,
            icon: Icons.label_outlined,
            color: Colors.orange,
            onChanged: (value) {
              ToastUtil.centerToast(value.toString(), context);
            }),
        YldmRating(
            score: 4,
            size: 50,
            icon: Icons.network_check_outlined,
            color: Colors.pinkAccent,
            onChanged: (value) {
              ToastUtil.centerToast(value.toString(), context);
            }),
        YldmRating(
            score: 5,
            size: 50,
            icon: Icons.qr_code_sharp,
            color: Colors.green,
            onChanged: (value) {
              ToastUtil.centerToast(value.toString(), context);
            }),
      ],
    );
  }
}
