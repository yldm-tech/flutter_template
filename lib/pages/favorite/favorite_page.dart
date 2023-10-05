import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:bilibili/widgets/yldm_grid_view.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends YldmState<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SafeArea(
        child: YldmGridView(
          items: gridDemoList,
        ),
      ),
    ));
  }
}
