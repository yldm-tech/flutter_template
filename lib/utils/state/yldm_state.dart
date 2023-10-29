import 'package:flutter/material.dart';
import 'package:myetc/utils/yldm/yldm_util.dart';

abstract class YldmState<T extends StatefulWidget> extends State<T> {
  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      fn();
      super.setState(fn);
    } else {
      YldmUtil.log('setState() called after dispose(): $this');
    }
  }
}
