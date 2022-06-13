import 'dart:convert';
import 'dart:io';

import 'EnDeCode.dart';

class FileManeget {
  final String fileName;

  FileManeget(this.fileName);

  localFile(path) async {
    File f = File('$path/$fileName');
    if (!f.existsSync()) {
      f.createSync();
    }
    return f;
  }

  // 读取 json 数据
  readJSON(String mainDocumentsDirectory) async {
    try {
      File file = await localFile(mainDocumentsDirectory);
      EnDeCode ende = EnDeCode();
      String str = ende.decodeBytes(ende.decode(file.readAsBytesSync()));
      return json.decode(str);
    } catch (err) {
      print(err);
      return null;
    }
  }

// 写入 json 数据
  writeJSON(obj, String mainDocumentsDirectory) async {
    try {
      EnDeCode ende = EnDeCode();
      File file = await localFile(mainDocumentsDirectory);
      return file
          .writeAsBytes(ende.encode(ende.encoderBytes(json.encode(obj))));
    } catch (err) {
      print(err);
    }
  }
}
