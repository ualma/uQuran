import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'QDown.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'FileSizeFormat.dart';
import 'Q.dart';

class QASettingPage extends StatefulWidget {
  QASettingPage({Key key}) : super(key: key);

  @override
  State<QASettingPage> createState() => _QASettingPageState();
}

class _QASettingPageState extends State<QASettingPage> {
  final q = Get.put(Q());
  final d = Get.put(QDown());
  final tanzilnet = "https://tanzil.net";
  TextEditingController controller = new TextEditingController();

  List<Map> qaraatlars = [];
  List<Map> qaraatlar = [
    {"id": 1, "name": "abdulbasit", "title": "AbdulBasit"},
    {"id": 2, "name": "abdulbasit-mjwd", "title": "AbdulBasit (Mujawwad)"},
    {"id": 3, "name": "afasy", "title": "Al-Afasy"},
    {"id": 4, "name": "ajamy", "title": "Al-Ajamy"},
    {"id": 5, "name": "akhdar", "title": "Al-Akhdar"},
    {"id": 6, "name": "ghamadi", "title": "Al-Ghamadi"},
    {"id": 7, "name": "hudhaify", "title": "Al-Hudhaify"},
    {"id": 8, "name": "husary", "title": "Al-Husary"},
    {"id": 9, "name": "husary-mjwd", "title": "Al-Husary (Mujawwad)"},
    {"id": 10, "name": "juhany", "title": "Al-Juhany"},
    {"id": 11, "name": "matrood", "title": "Al-Matrood"},
    {"id": 12, "name": "minshawi", "title": "Al-Minshawi"},
    {"id": 13, "name": "minshawi-mjwd", "title": "Al-Minshawi (Mujawwad)"},
    {"id": 14, "name": "muaiqly", "title": "Al-Muaiqly"},
    {"id": 15, "name": "qasim", "title": "Al-Qasim"},
    {"id": 16, "name": "hani", "title": "Ar-Rafai"},
    {"id": 17, "name": "sudais", "title": "As-Sudais"},
    {"id": 18, "name": "shateri", "title": "Ash-Shateri"},
    {"id": 19, "name": "shuraim", "title": "Ash-Shuraim"},
    {"id": 20, "name": "tablawi", "title": "At-Tablawi"},
    {"id": 21, "name": "basfar", "title": "Basfar"},
    {"id": 22, "name": "basfar2", "title": "Basfar II"},
    {"id": 23, "name": "bukhatir", "title": "Bukhatir"},
    {"id": 24, "name": "ayyub", "title": "Muhammad Ayyub"},
    {"id": 25, "name": "jibreel", "title": "Muhammad Jibreel"},
    {"id": 26, "name": "parhizgar", "title": "Parhizgar"},
  ];

  @override
  void initState() {
    super.initState();
    load();
    controller.text = tanzilnet;
  }

  load() async {
    String qn = await q.setting.getSetting("qraatName", q.resources.tallang);
    q.qraatName.value = qn;
    qaraatlar.forEach((element) async {
      qaraatlars.add({
        "id": element["id"],
        "name": element["name"],
        "title": element["title"],
        "down": false,
      });
    });

    qaraatlars.forEach((element) async {
      element["down"] = await checkIsDownload(element["id"]);
      setState(() {});
    });
  }

  checkIsDownload(int id) async {
    String path = q.mainPath;
    path = path + "/at/$id/";
    var dir = Directory(path);
    if (dir.existsSync()) {
      for (int s = 1; s < 114; s++) {
        int c = q.sc[s - 1];
        for (int a = 1; a <= c; a++) {
          TUrl u = controller.text != tanzilnet
              ? getKarUrl(id, s, a)
              : getTanzilUrl(qaraatlars[id - 1]["name"], s, a);
          File f = File(path + u.file);
          if (!f.existsSync()) {
            d.isComplet.value = false;
            d.folderSize.value = await getFolderSize(path, id);
            return false;
          }
        }
      }
    } else {
      d.isComplet.value = false;
      return false;
    }

    d.folderSize.value = await getFolderSize(path, id);
    d.isComplet.value = true;
    return true;
  }

  save(String title, int id) {
    q.qraatName.value = title;
    q.qraatID.value = id;
    q.setting.saveSetting("qraatName", q.qraatName.value);
    q.setting.saveSettingInt("qraatID", q.qraatID.value);
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
              Container(
                height: 50,
                width: double.infinity,
                color: q.theme.bgColor1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: q.theme.btnColor,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          q.resources.kiraat,
                          textAlign: TextAlign.center,
                          style: q.theme.title2,
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: q.theme.bgColor1,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    item(
                        Icons.volume_up,
                        q.resources.kiraat,
                        (Obx(() => Text(
                            q.qraatName.value != ""
                                ? q.qraatName.value
                                : q.resources.tallang,
                            style: q.theme.title2))), () {
                      List<Map> qrad = [];
                      qaraatlars.forEach((element) {
                        if (element["down"]) {
                          qrad.add(element);
                        }
                      });

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              contentPadding: const EdgeInsets.fromLTRB(
                                  0.0, 20.0, 10.0, 24.0),
                              title: Center(
                                  child: Text(q.resources.kiraat,
                                      style: q.theme.title2)),
                              content: Container(
                                  height: 280,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    reverse: false,
                                    padding: EdgeInsets.all(0.0),
                                    physics: BouncingScrollPhysics(),
                                    child: Column(
                                        children: qrad
                                            .map((item) => Container(
                                                  child: itemLang(item["title"],
                                                      item["id"]),
                                                ))
                                            .toList()),
                                  )),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text(
                                    q.resources.kaytix,
                                    style: q.theme.textStyle,
                                  ),
                                ),
                              ],
                              actionsAlignment: MainAxisAlignment.center,
                            );
                          });
                    }),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  //滑动的方向 Axis.vertical为垂直方向滑动，Axis.horizontal 为水平方向
                  scrollDirection: Axis.vertical,
                  //true 滑动到底部
                  reverse: false,
                  padding: EdgeInsets.all(0.0),
                  // 滑动到底部回弹效果
                  physics: BouncingScrollPhysics(),
                  // controller: _scrollControllerMorph,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: q.theme.bgColor1,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: qaraatlars
                              .map((e) => Container(
                                    child: titem(e),
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: q.theme.bgColor1,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Container(
                    height: 30,
                    width: double.infinity,
                    child: Row(
                      textDirection: q.theme.dir,
                      children: [
                        Container(
                            width: 30,
                            child: Icon(
                              Icons.computer,
                              color: q.theme.textColor1,
                            )),
                        Container(
                          padding: q.theme.uFontPadding,
                          child: Text(
                            q.resources.server,
                            textDirection: q.theme.dir,
                            style: q.theme.title1,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: TextField(
                              controller: controller,
                              textDirection: TextDirection.ltr,
                              keyboardType: TextInputType.url,
                              style: TextStyle(
                                fontSize: 16,
                                color: q.theme.textColor,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                  // 不是焦点的时候颜色
                                  borderSide:
                                      BorderSide(color: q.theme.bgColor3),
                                ),
                                focusedBorder: new UnderlineInputBorder(
                                  // 焦点集中的时候颜色
                                  borderSide:
                                      BorderSide(color: q.theme.bgColor3),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  sizik() {
    return Container(
      height: 2,
      margin: q.theme.dir == TextDirection.rtl
          ? EdgeInsets.fromLTRB(0, 0, 30, 0)
          : EdgeInsets.fromLTRB(30, 0, 0, 0),
      color: q.theme.bgColor3,
    );
  }

  sizik1() {
    return Container(
      height: 1,
      margin: q.theme.dir == TextDirection.rtl
          ? EdgeInsets.fromLTRB(10, 0, 0, 0)
          : EdgeInsets.fromLTRB(0, 0, 10, 0),
      color: q.theme.bgColor3,
    );
  }

  sizik2() {
    return Container(
      height: 1,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      color: q.theme.bgColor3,
    );
  }

  item(IconData icon, String title, Widget value, [Null Function() onPressed]) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: 30,
        width: double.infinity,
        child: Row(
          textDirection: q.theme.dir,
          children: [
            Container(
                width: 30,
                child: Icon(
                  icon,
                  color: q.theme.textColor1,
                )),
            Expanded(
              child: Container(
                padding: q.theme.uFontPadding,
                child: Text(
                  title,
                  textDirection: q.theme.dir,
                  style: q.theme.title1,
                ),
              ),
            ),
            Container(child: value),
          ],
        ),
      ),
    );
  }

  titem(item) {
    return Column(
      children: [
        item["id"] != 1 ? sizik1() : Container(),
        TextButton(
          onPressed: () {
            showDown(item);
          },
          child: Container(
            width: double.infinity,
            child: Row(
              textDirection: TextDirection.ltr,
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 30,
                            height: 30,
                            child: Icon(
                              Icons.volume_up,
                              color: q.theme.textColor1,
                            )),
                        Container(
                          height: 30,
                          alignment: Alignment.center,
                          child: Text(
                            item["title"],
                            textDirection: TextDirection.ltr,
                            style: q.theme.title2en,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                item["down"]
                    ? Icon(
                        Icons.download_done,
                        color: q.theme.textColorComplet,
                      )
                    : Icon(
                        Icons.download,
                        color: q.theme.textColor1,
                      ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TUrl getTanzilUrl(String kari, int sura, int aya) {
    TUrl u = TUrl();
    u.file = q.code.getFileName(sura, aya);
    u.url = "$tanzilnet/res/audio/$kari/${u.file}.mp3";
    u.file = q.code.generateMD5(u.file);
    return u;
  }

  TUrl getKarUrl(int kariid, int sura, int aya) {
    TUrl u = TUrl();
    u.file = q.code.getFileMD5Name(sura, aya);
    String server = controller.text;
    u.url = "$server/at/$kariid/${u.file}";
    return u;
  }

  List<TUrl> dlist = [];

  startDownload(int id) async {
    String path = q.mainPath;
    path = path + "/at/$id/";
    dlist.clear();
    try {
      await Directory(path).create(recursive: true);
    } catch (_) {}
    for (int s = 1; s <= 114; s++) {
      int c = q.sc[s - 1];
      // d.downloadSura.value = s;
      // d.downloadAyaJami.value = c;
      for (int a = 1; a <= c; a++) {
        if (!d.isStartDownload.value) return;

        TUrl u = controller.text != tanzilnet
            ? getKarUrl(id, s, a)
            : getTanzilUrl(qaraatlars[id - 1]["name"], s, a);
        // print("downloading $id, $s, $a ${u.url}");

        u.a = a;
        u.s = s;
        u.isComplet = false;
        u.isStart = false;
        dlist.add(u);
        // await downloadFile(u.url, path + u.file);
        // d.downloadAya.value = a;
        // d.downloadAyaCurrentAll.value += 1;
      }
    }
    // d.isStartDownload.value = false;
    // d.folderSize.value = await getFolderSize(path, id);
    // d.isComplet.value = true;

    // setState(() {
    //   qaraatlars[id - 1]["down"] = true;
    // });
    // startCount = 0;
    d.downloadAyaCurrentAll.value = 0;
    dlist.forEach((e) {
      File file = new File(path + e.file);
      if (file.existsSync()) {
        e.isComplet = true;
        e.isStart = true;
      }
    });
    checkDownComlt(path, id);

    // print("ok");
  }

  updateSuraAya(String path, int id) async {
    int completCount = 0;
    for (int i = 0; i < dlist.length; i++) {
      TUrl e = dlist[i];
      completCount += 1;
      if (e.isComplet == false) {
        d.downloadAyaJami.value = q.sc[e.s - 1];

        d.downloadSura.value = e.s;
        d.downloadAya.value = e.a;
        // print("${e.s} ${e.a}");
        d.downloadAyaCurrentAll.value = completCount;
        // print("completCount $completCount");
        return;
      } else {
        // print(e);
      }
    }

    d.isStartDownload.value = false;
    d.folderSize.value = await getFolderSize(path, id);
    d.isComplet.value = true;

    bool tf = false;
    for (int i = 0; i < qaraatlars.length; i++) {
      if (qaraatlars[i]["down"] == true) {
        tf = true;
      }
    }
    if (tf == false) {
      save(qaraatlars[id - 1]["title"], qaraatlars[id - 1]["id"]);
    }

    setState(() {
      qaraatlars[id - 1]["down"] = true;
    });
  }

  //
  checkDownComlt(String path, int id) async {
    int startCount = 0;
    for (int i = 0; i < dlist.length; i++) {
      TUrl e = dlist[i];
      if (!e.isComplet && e.isStart) {
        startCount += 1;
      }
    }

    await updateSuraAya(path, id);

    for (int i = 0; i < dlist.length; i++) {
      TUrl e = dlist[i];
      if (e.isComplet) {
      } else {
        if (startCount < 20) {
          e.isStart = true;
          startCount += 1;
          downloadFile(e.url, path + e.file, e);
        }
        // print("downloading  ${e.s}, ${e.a} ${e.isComplet} ${e.isStart}");
      }
    }

    //等待后运行
    if (!d.isStartDownload.value) return;
    Future.delayed(Duration(seconds: 1), () {
      checkDownComlt(path, id);
    });
  }

  downloadFile(url, filename, TUrl e) async {
    File file = new File(filename);
    bool isOk = false;
    if (file.existsSync()) {
    } else {
      try {
        var request = await http.get(
          Uri.parse(url),
        );
        Uint8List bytes = request.bodyBytes;
        if (controller.text != tanzilnet) {
          await file.writeAsBytes(bytes);
        } else {
          await file.writeAsBytes(q.code.encode(bytes, isGzip: false));
        }
        isOk = true;
      } catch (e) {
        print(e);
      }
    }
    // print("downloading ${e.s}, ${e.a} ${e.isComplet} ${e.isStart}");
    if (isOk) {
      for (int i = 0; i < dlist.length; i++) {
        TUrl el = dlist[i];
        if (el.a == e.a && el.s == e.s) {
          el.isComplet = true;
          return;
        }
      }
    }
  }

  deleteDownload(int id) async {
    String path = q.mainPath;
    path = path + "/at/$id/";
    try {
      await Directory(path).delete(recursive: true);
    } catch (_) {}
    d.isComplet.value = false;
  }

  //获取文件夹容量
  Future<int> getFolderSize(String path, int id) async {
    int size = 0;
    await Directory(path).list().forEach((FileSystemEntity f) async {
      if (f is File) {
        size += f.lengthSync();
      } else if (f is Directory) {
        size += await getFolderSize(f.path, id);
      }
    });
    return size;
  }

  showDown(item) {
    d.downloadAyaCurrentAll.value = 0;
    d.downloadSura.value = 1;
    d.downloadAya.value = 1;

    d.downloadSuraJami.value = q.sc.length;
    d.downloadAyaJami.value = q.sc[0];

    checkIsDownload(item["id"]);

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(
                child: Column(
              children: [
                Text(q.resources.kiraatQuxurux, style: q.theme.title2),
                SizedBox(
                  height: 30,
                ),
                Text(item["title"], style: q.theme.title2),
              ],
            )),
            content: (Obx(
              () => Container(
                  height: d.isComplet.value ? 200 : 350,
                  child: Column(
                    children: [
                      Expanded(
                        child: d.isComplet.value
                            ? Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Text(
                                    //   q.resources.quxupbolgan,
                                    //   style: q.theme.title1,
                                    // ),
                                    Container(
                                      child: Text(
                                        FileSizeFormat()
                                            .getPrintSize(d.folderSize.value),
                                        style: q.theme.title3,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Container(
                                height: 300,
                                width: 300,
                                child: SleekCircularSlider(
                                  appearance: CircularSliderAppearance(
                                      customWidths: CustomSliderWidths(
                                          trackWidth: 1, progressBarWidth: 2),
                                      customColors: CustomSliderColors(
                                          trackColor: q.theme.textColor2,
                                          progressBarColor: q.theme.textColor,
                                          hideShadow: true),
                                      startAngle: 90,
                                      angleRange: 360,
                                      size: 200.0,
                                      animationEnabled: false),
                                  min: 0,
                                  max: d.downloadAyaJami.value.toDouble(),
                                  initialValue: d.downloadAya.value.toDouble(),
                                  innerWidget: (double value) {
                                    return Align(
                                      alignment: Alignment.center,
                                      child: SleekCircularSlider(
                                        appearance: CircularSliderAppearance(
                                            customWidths: CustomSliderWidths(
                                                trackWidth: 1,
                                                progressBarWidth: 5),
                                            customColors: CustomSliderColors(
                                                trackColor: q.theme.textColor2,
                                                progressBarColor:
                                                    q.theme.textColor,
                                                hideShadow: true),
                                            startAngle: 90,
                                            angleRange: 360,
                                            size: 200.0,
                                            animationEnabled: false),
                                        min: 0,
                                        max: d.downloadAyaJamiAll.value
                                            .toDouble(),
                                        initialValue: d
                                            .downloadAyaCurrentAll.value
                                            .toDouble(),
                                        innerWidget: (double value) {
                                          return Center(
                                              child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '${d.downloadSuraJami.value.toString().padLeft(4)} - ${d.downloadSura.value.toString().padLeft(4)}',
                                                style: q.theme.title2,
                                              ),
                                              Text(
                                                '${d.downloadAyaJami.value.toString().padLeft(4)} - ${d.downloadAya.value.toString().padLeft(4)}',
                                                style: q.theme.title2,
                                              ),
                                              Text(
                                                '${d.downloadAyaJamiAll.value.toString().padLeft(4)} - ${d.downloadAyaCurrentAll.value.toString().padLeft(4)}',
                                                style: q.theme.title4,
                                              ),
                                              Text(
                                                '${(d.downloadAyaCurrentAll.value / d.downloadAyaJamiAll.value * 100).toInt()} %',
                                                style: q.theme.title3,
                                              ),
                                            ],
                                          ));
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ),
                      ),
                      d.isStartDownload.value
                          ? Container()
                          : d.isComplet.value
                              ? Column(
                                  children: [
                                    // q.btn(
                                    //   q.resources.qiraattkilipbekitix,
                                    //   icon: Icons.volume_up,
                                    //   onPressed: () {
                                    //     save(item["title"], item["id"]);
                                    //     navigator.pop();
                                    //   },
                                    // ),
                                    // Container(
                                    //   margin: EdgeInsets.all(10),
                                    //   child: TextButton(
                                    //     child: Row(
                                    //       textDirection: q.theme.dir,
                                    //       mainAxisAlignment:
                                    //           MainAxisAlignment.center,
                                    //       children: [
                                    //         Container(
                                    //           child: Icon(Icons.delete),
                                    //           padding: EdgeInsets.fromLTRB(
                                    //               10, 0, 10, 0),
                                    //         ),
                                    //         Text(
                                    //           q.resources.qiraattinioqurux,
                                    //           style: q.theme.textStyle,
                                    //         ),
                                    //       ],
                                    //     ),
                                    //     onPressed: () {
                                    //       d.isStartDownload.value = true;
                                    //       deleteDownload(item["id"]);
                                    //     },
                                    //   ),
                                    // ),
                                  ],
                                )
                              : Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: q.btn(
                                    q.resources.kiraatQuxurux,
                                    icon: Icons.download,
                                    onPressed: () {
                                      d.isStartDownload.value = true;
                                      startDownload(item["id"]);
                                    },
                                  ),
                                ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: item["down"]
                              ? MainAxisAlignment.spaceBetween
                              : MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                q.resources.kaytix,
                                style: q.theme.textStyle,
                              ),
                            ),
                            item["down"]
                                ? TextButton(
                                    child: Text(
                                      q.resources.qiraattinioqurux,
                                      style: q.theme.textStyle,
                                    ),
                                    onPressed: () {
                                      d.isStartDownload.value = true;
                                      deleteDownload(item["id"]);
                                      item["down"] = false;
                                      Navigator.pop(context);
                                    },
                                  )
                                : Container()
                          ],
                        ),
                      )
                    ],
                  )),
            )),
            actionsAlignment: MainAxisAlignment.center,
          );
        }).then((value) {
      d.isStartDownload.value = false;
      setState(() {});
    });
  }

  itemLang(String title, int id) {
    return (Obx(() => ListTile(
          onTap: () {
            save(title, id);
            navigator.pop();
          },
          title: Container(
            height: 40,
            alignment: Alignment.center,
            decoration: q.qraatID.value == id
                ? BoxDecoration(
                    border: Border.all(
                      color: q.theme.btnColor,
                      width: 3,
                    ),
                  )
                : BoxDecoration(),
            width: double.infinity,
            child: Text(title, style: q.theme.title2),
          ),
        )));
  }
}

class TUrl {
  String url;
  String file;
  int a;
  int s;
  bool isComplet;
  bool isStart;
}
