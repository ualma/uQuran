import 'dart:io';
import 'package:archive/archive.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'Q.dart';

class SQL {
  Q q;
  String dbName = 's';
  String dbPath;
  Database database;
  initQ(Q q) {
    this.q = q;
    dbPath = q.mainPath;
  }

  init() async {
    await initialDatabase();
  }

  initialDatabase() async {
    int databaseVersionNumber =
        await q.setting.getSettingInt("databaseVersionNumber", 0);
    print(
        "databaseVersionNumber:$databaseVersionNumber q.databaseVersionNumber:${q.databaseVersionNumber}");
    if (databaseVersionNumber != q.databaseVersionNumber) {
      deleteDir();
    }

    print(dbPath);
    File f = File(dbPath + "/q/" + dbName);
    if (!f.existsSync()) {
      try {
        await Directory(dbPath + '/q/').create(recursive: true);
      } catch (_) {}
      ByteData data = await rootBundle.load('assets/images/q/s.zip');
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      bytes = q.code.decode(bytes);

      final archive = ZipDecoder().decodeBytes(bytes);
      for (final file in archive) {
        final filename = file.name;
        if (file.isFile) {
          final data = file.content as List<int>;
          File(dbPath + '/q/' + filename)
            ..createSync(recursive: true)
            ..writeAsBytesSync(data);
        } else {
          Directory(dbPath + '/q/' + filename).create(recursive: true);
        }
      }
      await q.setting
          .saveSettingInt("databaseVersionNumber", q.databaseVersionNumber);
    } else {
      print("Opening existing database");
    }
    await openDataBase();
  }

  /// 打开数据库
  openDataBase() async {
    /// 通过getDatabasesPath()方法获取数据库位置
    // var databasePath = await getDatabasesPath();
    // print(databasePath);
    database = await openDatabase(dbPath + "/q/" + dbName, version: 1);
  }

  /// 查询
  Future<List<Map>> select(String sql) async {
    List<Map> list = await database.rawQuery(sql);
    return list;
  }

  /// 查询
  Future<List<Map>> selectSearch(String sql, List<String> word) async {
    List<Map> list = await database.rawQuery(sql, word);
    return list;
  }

  /// 查询一个
  Future<Map> selectOne(String sql) async {
    List<Map> list = await database.rawQuery(sql);
    return list[0];
  }

  closeDataBase() {
    database.close();
    deleteDir();
  }

  deleteDir() {
    Directory f = Directory(dbPath + "/q/");
    if (f.existsSync()) {
      f.deleteSync(recursive: true);
    }
  }

  selectValue(String sql) async {
    Map m = await selectOne(sql);
    return m[m.keys.first];
  }
}
