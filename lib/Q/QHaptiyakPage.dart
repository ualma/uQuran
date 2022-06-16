import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:archive/archive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'MyLoading.dart';
import 'MyBackSetting.dart';
import 'Q.dart';
import 'QHaptiyakDarisPage.dart';

class QHaptiyakPage extends StatefulWidget {
  QHaptiyakPage({Key key}) : super(key: key);
  @override
  State<QHaptiyakPage> createState() => _QHaptiyakPageState();
}

class _QHaptiyakPageState extends State<QHaptiyakPage> {
  final q = Get.put(Q());
  List<Map> sura = [
    {"id": 95, "text": "سۈرە فاتىھە", "name": "SurahAl-Fatihah.html"},
    {"id": 96, "text": "سۈرە تىن", "name": "SurahAt-Tin.html"},
    {"id": 97, "text": "سۈرە قەدر", "name": "SurahAl-Qadr.html"},
    {"id": 98, "text": "سۇرە زەلزەلە", "name": "SurahAz-Zalzalah.html"},
    {"id": 99, "text": "سۈرە ئادىيات", "name": "SurahAl-Adiyaat.html"},
    {"id": 100, "text": "سۈرە قارىئە", "name": "SurahAl-Qaria.html"},
    {"id": 101, "text": "سۈرە تەكاسۇر", "name": "SurahAt-Takathur.html"},
    {"id": 102, "text": "سۈرە ئەسىر", "name": "SurahAl-Asr.html"},
    {"id": 103, "text": "سۈرەھۇمەزە", "name": "SurahAl-Humaza.html"},
    {"id": 104, "text": "سۈرە فىل", "name": "SurahAl-Fil.html"},
    {"id": 105, "text": "سۈرە قۇرەيىش", "name": "SurahAl-Quraish.html"},
    {"id": 106, "text": "سۈرە مائۇن", "name": "SurahAl-Maun.html"},
    {"id": 107, "text": "سۈرەكەۋسەر", "name": "SurahAl-Kauther.html"},
    {"id": 108, "text": "سۈرە كافىرۇن", "name": "SurahAl-Kafirun.html"},
    {"id": 109, "text": "سۈرە ناسىر", "name": "SurahAn-Nasr.html"},
    {"id": 110, "text": "سۈرە مەسەد", "name": "SurahAl-Masad.html"},
    {"id": 112, "text": "سۈرە ئخلاس", "name": "SurahAl-Ikhlas.html"},
    {"id": 113, "text": "سۈرە فەلەق ", "name": "SurahAl-Falaq.html"},
    {"id": 114, "text": "سۈرە ناس", "name": "SurahAn-Naas.html"}
  ];
  List<int> dars = [];
  bool isZipOk = false;
  String hPath = "";

  @override
  void initState() {
    super.initState();
    for (int i = 1; i <= 52; i++) {
      dars.add(i);
    }
    hPath = q.mainPath;
    Future.delayed(Duration(milliseconds: 300), () {
      load();
    });
  }

  load() async {
    scheduleMicrotask(() {
      initZip();
    });
  }

  initZip() async {
    setState(() {
      isZipOk = false;
    });
    int haptiyakZipVersionNumber =
        await q.setting.getSettingInt("haptiyakZipVersionNumber", 0);
    // print(
    //     "haptiyakZipVersionNumber:$haptiyakZipVersionNumber q.haptiyakZipVersionNumber:${q.haptiyakZipVersionNumber}");
    if (haptiyakZipVersionNumber != q.haptiyakZipVersionNumber) {
      deleteDir(hPath);
    } else {
      if (await checkFile(hPath)) {
        setState(() {
          isZipOk = true;
        });
        return;
      }
    }

    var receivePort = ReceivePort();
    // Here runMyIsolate methos should be a top level function
    ByteData data = await rootBundle.load('assets/images/q/p.zip');
    ByteData data1 = await rootBundle.load('assets/images/q/p1.zip');
    await Isolate.spawn(
        runMyIsolate, [receivePort.sendPort, q.mainPath, data, data1]);
    // print(await receivePort.first);
    receivePort.listen((date) {
      // print("Isolate 1 接受消息：data = $date");
      q.setting.saveSettingInt(
          "haptiyakZipVersionNumber", q.haptiyakZipVersionNumber);
      setState(() {
        isZipOk = true;
      });
    });
  }

  static deleteDir(String hPath) {
    Directory f = Directory(hPath + "/h/");
    if (f.existsSync()) {
      f.deleteSync(recursive: true);
    }
  }

  // We declare a static function here for an isolated callback function
  static Future<void> runMyIsolate(List<dynamic> args) async {
    var sendPort = args[0] as SendPort;
    var hPath = args[1] as String;
    ByteData data = args[2] as ByteData;
    ByteData data1 = args[3] as ByteData;
    await unZip(hPath, data);
    await unZip(hPath, data1);
    // print("In runMyIsolate ");
    Isolate.exit(sendPort, args);
  }

  static unZip(String hPath, ByteData data) async {
    try {
      await Directory(hPath + '/h/').create(recursive: true);
    } catch (_) {}

    // ByteData data = await rootBundle.load('assets/images/q/p.zip');

    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

    final archive = ZipDecoder().decodeBytes(bytes);
    print("archive: ${archive.length}");
    for (final file in archive) {
      final filename = file.name;
      // print(filename);
      if (file.isFile) {
        final data = file.content as List<int>;
        File(hPath + '/h/' + filename)
          ..createSync(recursive: true)
          ..writeAsBytesSync(data);
      } else {
        Directory(hPath + '/h/' + filename).create(recursive: true);
      }
    }
    File(hPath + '/h/0')
      ..createSync(recursive: true)
      ..writeAsString("0");
  }

  static Future<bool> checkFile(String hPath) async {
    File f = File(hPath + '/h/0');
    return f.existsSync();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: q.theme.theme,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              MyBackSetting(context, () {
                setState(() {});
              }),
              Container(
                height: 80,
                child: Row(
                    textDirection: q.theme.dir,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: q.theme.bgColor1,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                        margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Center(
                          child: Text(
                            q.resources.daris,
                            style: q.theme.title4,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Center(
                            child: Text(
                          q.resources.mundarija,
                          style: q.theme.title3,
                          softWrap: false,
                        )),
                      )),
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: q.theme.bgColor1,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                        margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Center(
                            child: Text(
                          q.resources.sura,
                          style: q.theme.title4,
                        )),
                      )
                    ]),
              ),
              Expanded(
                  child: isZipOk
                      ? Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Row(
                            textDirection: q.theme.dir,
                            children: [
                              Expanded(
                                child: Container(
                                  color: q.theme.bgColor1,
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      reverse: false,
                                      padding: EdgeInsets.all(0.0),
                                      physics: BouncingScrollPhysics(),
                                      child: Column(
                                          children: dars
                                              .map((item) => Container(
                                                    child: darsW(item),
                                                  ))
                                              .toList())),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: q.theme.bgColor1,
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      reverse: false,
                                      padding: EdgeInsets.all(0.0),
                                      physics: BouncingScrollPhysics(),
                                      child: Column(
                                          children: sura
                                              .map((item) => Container(
                                                    child: suraW(item),
                                                  ))
                                              .toList())),
                                ),
                              )
                            ],
                          ),
                        )
                      : MyLoading()),
            ],
          ),
        ),
      ),
    );
  }

  darsW(id) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Column(
        children: [
          id != 1
              ? Container(
                  height: 2,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  color: q.theme.bgColor3,
                )
              : Container(),
          ListTile(
            onTap: () {
              gotoUrl("lesson$id.html");
            },
            title: Center(
              child: Text(
                "$id. ${q.resources.daris}",
                textDirection: q.theme.dir,
                style: q.theme.title2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  suraW(item) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Column(
        children: [
          item["id"] != 95
              ? Container(
                  height: 2,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  color: q.theme.bgColor3,
                )
              : Container(),
          ListTile(
            onTap: () {
              gotoUrl("${item["name"]}");
            },
            title: Center(
              child: Text(
                item["text"].toString(),
                textDirection: q.theme.dir,
                style: q.theme.title2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  gotoUrl(url) {
    Navigator.push(
      context,
      new MaterialPageRoute(
          builder: (context) => new QHaptiyakDarisPage(url, hPath)),
    ).then((value) {
      if (value != null) {
        if (value == "next") {
          // gotoSura(id + 1);
        }
      }
    });
  }
}
