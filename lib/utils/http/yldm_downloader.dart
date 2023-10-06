import 'dart:io';

import 'package:bilibili/utils/yldm/yldm_util.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

typedef DownloadListener = void Function(
    int total, int received, bool done, String? path);

///  使用示例：
//             YldmDownloader.getInstance().download(
//                       url:
//                           "https://redirector.gvt1.com/edgedl/android/studio/install/2022.3.1.20/android-studio-2022.3.1.20-mac_arm.dmg",
//                       filename: "android-studio-2022.3.1.20-mac_arm.dmg",
//                       listener: (totalM, receivedM, done, path) {
//                         setState(() {
//                           total = totalM;
//                           received = receivedM;
//                           isDone = done;
//                         });
//                         if (done && path != null) {
//                           YldmUtil.log(path);
//                         }
//                       });
///
class YldmDownloader {
  int _total = 0;
  int _received = 0;
  static YldmDownloader? _instance;

  static YldmDownloader getInstance() {
    _instance ??= YldmDownloader();
    return _instance!;
  }

  void download({
    required String url,
    String? filename,
    DownloadListener? listener,
  }) async {
    YldmUtil.log('start download');
    var uri = Uri.parse(url);
    var request = http.Request('GET', uri);
    var response = await http.Client().send(request);
    _total = response.contentLength ?? 0;
    var path = (await getApplicationDocumentsDirectory()).path;
    filename ??= url.substring(url.lastIndexOf("/") + 1);
    final file = await File('$path/$filename').create(recursive: true);
    var writeFile = file.openSync(mode: FileMode.write);
    response.stream.listen((value) {
      _received += value.length;
      writeFile.writeFromSync(value);
      var total = (_total / 1024 / 1024).floor();
      var received = (_received / 1024 / 1024).floor();
      if (listener != null) {
        listener(total, received, false, null);
      }
      YldmUtil.log('download progress: ${received}M/${total}M');
    }).onDone(() async {
      var total = (_total / 1024 / 1024).floor();
      var received = (_received / 1024 / 1024).floor();
      if (listener != null) {
        listener(total, received, true, file.path);
      }
      YldmUtil.log('download $filename done');
      await writeFile.close();
    });
  }

  cancel() {
    // todo
  }
}

downloadProcess({
  int received = 1,
  int total = 1,
  Color bgColor = Colors.black26,
  Color progressColor = Colors.redAccent,
}) {
  if (total <= 0) {
    total = 1;
  }
  if (received == 0) {
    received <= 1;
  }
  return GFProgressBar(
      percentage: received / total,
      backgroundColor: bgColor,
      progressBarColor: progressColor);
}
