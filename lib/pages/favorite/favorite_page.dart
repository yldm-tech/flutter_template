import 'package:flutter/material.dart';
import 'package:myetc/utils/state/yldm_state.dart';
import 'package:myetc/widgets/yldm_grid_view.dart';

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
