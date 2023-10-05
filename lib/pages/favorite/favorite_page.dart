import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends YldmState<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('Favorite Page'),
    ));
  }
}
