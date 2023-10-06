import 'dart:io';

import 'package:bilibili/utils/yldm/yldm_util.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

typedef DownloadListener = void Function(int total, int received, bool done);

class YldmDownloader {
  int _total = 0;
  int _received = 0;
  static YldmDownloader? _instance;

  static YldmDownloader getInstance() {
    _instance ??= YldmDownloader();
    return _instance!;
  }

  Future<String> download({
    required String url,
    required String filename,
    required DownloadListener listener,
  }) async {
    YldmUtil.log('start download');
    var uri = Uri.parse(url);
    var request = http.Request('GET', uri);
    var response = await http.Client().send(request);
    _total = response.contentLength ?? 0;
    var path = (await getApplicationDocumentsDirectory()).path;
    final file = await File('$path/$filename').create(recursive: true);
    var writeFile = file.openSync(mode: FileMode.write);
    response.stream.listen((value) {
      _received += value.length;
      writeFile.writeFromSync(value);
      var total = (_total / 1024 / 1024).floor();
      var received = (_received / 1024 / 1024).floor();
      listener(total, received, false);
      YldmUtil.log('download progress: ${received}M/${total}M');
    }).onDone(() async {
      var total = (_total / 1024 / 1024).floor();
      var received = (_received / 1024 / 1024).floor();
      listener(total, received, true);
      YldmUtil.log('download $filename done');
      await writeFile.close();
    });
    return file.absolute.path;
  }

  cancel() {
    // todo
  }
}

downloadProcess(int received, int total) {
  return GFProgressBar(
      percentage: received / total,
      backgroundColor: Colors.black26,
      progressBarColor: GFColors.DANGER);
}
