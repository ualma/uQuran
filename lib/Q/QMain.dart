import 'dart:io';
import 'dart:isolate';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:archive/archive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'EnDeCode.dart';
import 'MyLoading.dart';
import 'Q.dart';
import 'QHomePage.dart';

class MyQMain extends StatefulWidget {
  MyQMain(this.isQ, {Key key}) : super(key: key);
  final bool isQ;
  @override
  State<MyQMain> createState() => _MyQMainState();
}

class _MyQMainState extends State<MyQMain> {
  final q = Get.put(Q());

  bool isLoad = false;
  bool isSelectLang = false;
  ImageProvider<dynamic> logoImage = AssetImage('assets/images/run.png');
  @override
  void initState() {
    super.initState();
    selectLant();
  }

  selectLant() async {
    q.requestPermission();
    await q.myInit(widget.isQ);
    q.setcontext(context);
    // await q.setting.saveSettingBool("isSelectLang", false);
    isSelectLang = await q.setting.getSettingBool("isSelectLang", false);
    load();
  }

  load() async {
    q.arabicText.value =
        await q.setting.getSettingBool("arabicText", q.arabicText.value);
    q.aalimTarjimiai.value = await q.setting
        .getSettingBool("aalimTarjimiai", q.aalimTarjimiai.value);
    q.hayattarjimisi.value = await q.setting
        .getSettingBool("hayattarjimisi", q.hayattarjimisi.value);
    q.muahhmadsalih.value =
        await q.setting.getSettingBool("muahhmadsalih", q.muahhmadsalih.value);
    q.yusupmuhahmadtarjimisi.value = await q.setting.getSettingBool(
        "yusupmuhahmadtarjimisi", q.yusupmuhahmadtarjimisi.value);

    q.showTarjimaHanyu.value = await q.setting
        .getSettingBool("showTarjimaHanyu", q.showTarjimaHanyu.value);
    q.showTarjimaEnglish.value = await q.setting
        .getSettingBool("showTarjimaEnglish", q.showTarjimaEnglish.value);
    q.showTarjimaTurky.value = await q.setting
        .getSettingBool("showTarjimaTurky", q.showTarjimaTurky.value);

    q.arabicTitle.value =
        await q.setting.getSetting("arabicTitle", q.arabicTitle.value);
    q.arabicfontFamily.value = await q.setting
        .getSetting("arabicfontFamily", q.arabicfontFamily.value);
    q.arabicFontSize.value =
        await q.setting.getSettingInt("arabicFontSize", q.arabicFontSize.value);

    q.uyghurfontFamily.value = await q.setting
        .getSetting("uyghurfontFamily", q.uyghurfontFamily.value);
    q.uyghurTitle.value =
        await q.setting.getSetting("uyghurTitle", q.uyghurTitle.value);
    q.color.value = await q.setting.getSetting("color", q.color.value);

    q.uyghurFontSize.value =
        await q.setting.getSettingInt("uyghurFontSize", q.uyghurFontSize.value);
    q.qraatID.value = await q.setting.getSettingInt("qraatID", q.qraatID.value);
    q.qraatName.value =
        await q.setting.getSetting("qraatName", q.qraatName.value);
    q.setcontext(context);
    q.setLang(q.lang.value);
    Future.delayed(Duration(milliseconds: 100)).then((_) async {
      logoImage = await q.getAssetImageDecode('assets/images/q/i.png');
      setState(() {});
    }).then((value) async {
      Future.delayed(Duration(milliseconds: 100)).then((_) async {
        // await q.sql.init();
        // setState(() {
        //   isLoad = true;
        // });
        initialDatabase();
      });
    });
  }

  initialDatabase() async {
    String dbPath = q.mainPath;

    int databaseVersionNumber =
        await q.setting.getSettingInt("databaseVersionNumber", 0);
    // print(
    //     "databaseVersionNumber:$databaseVersionNumber q.databaseVersionNumber:${q.databaseVersionNumber}");
    if (databaseVersionNumber != q.databaseVersionNumber) {
      q.sql.deleteDir();
    }

    File f = File(dbPath + "/q/" + q.sql.dbName);
    // print(f.toString());
    if (!f.existsSync()) {
      var receivePort = ReceivePort();
      ByteData data = await rootBundle.load('assets/images/q/s.zip');
      await Isolate.spawn(
          runMyIsolate, [receivePort.sendPort, q.mainPath, data]);
      receivePort.listen((date) {
        // print("Isolate 1 接受消息：data = $date");
        q.setting
            .saveSettingInt("databaseVersionNumber", q.databaseVersionNumber);
        q.sql.openDataBase();
        setState(() {
          isLoad = true;
        });
      });
    } else {
      // print("Opening existing database");
      q.sql.openDataBase();
      setState(() {
        isLoad = true;
      });
    }
  }

  static Future<void> runMyIsolate(List<dynamic> args) async {
    var sendPort = args[0] as SendPort;
    var hPath = args[1] as String;
    ByteData data = args[2] as ByteData;
    await unZip(hPath, data);
    // print("In runMyIsolate ");
    Isolate.exit(sendPort, args);
  }

  static unZip(dbPath, ByteData data) async {
    try {
      await Directory(dbPath + '/q/').create(recursive: true);
    } catch (_) {}
    // ByteData data = await rootBundle.load('assets/images/q/s.zip');
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

    bytes = EnDeCode().decode(bytes);

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
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: q.theme.theme,
      home: WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          body: SafeArea(
            child: isSelectLang
                ? Column(children: [
                    // MyBackSetting(q),
                    widget.isQ
                        ? Container(
                            height: 40,
                          )
                        : Container(
                            height: 40,
                            width: double.infinity,
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: () {
                                  q.sql.closeDataBase();
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.exit_to_app)),
                          ),
                    Expanded(
                      flex: 40,
                      child: Center(
                          child: Container(
                              width: MediaQuery.of(context).size.height * 0.3,
                              child: Image(image: logoImage))),
                    ),
                    Expanded(
                      flex: 50,
                      child: Center(
                          child: Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "وَلَقَدْ يَسَّرْنَا ٱلْقُرْءَانَ لِلذِّكْرِ فَهَلْ مِن مُّدَّكِرٍۢ﴿القمر ١٧﴾",
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                        fontFamily: "Q",
                                        color: q.theme.textColor,
                                        fontSize: 28),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "ھەقىقەتەن بىز بۇ قۇرئاننى ئوقۇش ۋە يادلاش ( لەۋزىنى ئوقۇش ۋە يادلاشقا، ئۇنىڭ مەنىسىنى چۈشىنىش ۋە بىلىش) ئۈچۈن ئاسان قىلدۇق، (ئۇنىڭدىن) ۋەز - نەسىھەت ئالغۇچى بارمۇ؟ (سۈرە قەمەر 17- ئايەت)",
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                        fontFamily: "ALKATIP",
                                        color: q.theme.textColor,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "我确已使《古兰经》易于记诵(容易背诵和觉悟)，有接受(觉悟和接受)劝告的人吗？(经文54:17)",
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontFamily: "Arial",
                                        color: q.theme.textColor,
                                        fontSize: 16),
                                  ),
                                ],
                              ))),
                    ),
                    Expanded(
                      flex: 20,
                      child: isLoad
                          ? Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  reverse: false,
                                  padding: EdgeInsets.all(0.0),
                                  physics: BouncingScrollPhysics(),
                                  child: Container(
                                    height: 70,
                                    width: 250,
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(10),
                                    child: TextButton(
                                      onPressed: () {
                                        goHome();
                                      },
                                      style: q.theme.btnStyle,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: Platform.isMacOS ? -7 : -15,
                                            left: 10,
                                            right: 10,
                                            child: Text(
                                              q.resources.bismillaah,
                                              textAlign: TextAlign.center,
                                              style: q.theme.btnText
                                                  .apply(fontFamily: "AQ"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )))
                          : MyLoading(),
                    ),
                  ])
                : Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 40,
                          child: isLoad
                              ? Container(
                                  alignment: Alignment.bottomCenter,
                                  child: DefaultTextStyle(
                                    style: q.theme.textStyleLang,
                                    child: AnimatedTextKit(
                                      pause: const Duration(milliseconds: 10),
                                      repeatForever: true,
                                      animatedTexts: [
                                        ScaleAnimatedText('تىل تاللاڭ'),
                                        ScaleAnimatedText('选择语言'),
                                        ScaleAnimatedText('Bir dil seçin'),
                                        ScaleAnimatedText('Choose a language'),
                                        ScaleAnimatedText('اختر لغة',
                                            textStyle: q.theme.textStyleLanga),
                                      ],
                                    ),
                                  ),
                                )
                              : Container(),
                        ),
                        Expanded(
                          flex: 60,
                          child: Container(
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                            child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                reverse: false,
                                padding: EdgeInsets.all(0.0),
                                physics: BouncingScrollPhysics(),
                                child: Column(
                                    children: q.langList
                                        .map((e) => (Container(
                                            width: 180,
                                            child: q.btn(e["title"],
                                                onPressed: () {
                                              q.setLang(e["lang"]);
                                              switch (e["lang"]) {
                                                case "zh-CN":
                                                  q.setting.saveSettingBool(
                                                      "showTarjimaHanyu",
                                                      q.showTarjimaHanyu.value);
                                                  q.showTarjimaHanyu.value =
                                                      true;
                                                  break;
                                                case "en-US":
                                                  q.setting.saveSettingBool(
                                                      "showTarjimaEnglish",
                                                      q.showTarjimaEnglish
                                                          .value);
                                                  q.showTarjimaEnglish.value =
                                                      true;
                                                  break;
                                                case "tr-TR":
                                                  q.setting.saveSettingBool(
                                                      "showTarjimaTurky",
                                                      q.showTarjimaTurky.value);
                                                  q.showTarjimaTurky.value =
                                                      true;
                                                  break;
                                                default:
                                              }
                                              q.setting.saveSettingBool(
                                                  "isSelectLang", true);
                                              setState(() {
                                                isSelectLang = true;
                                              });
                                            }))))
                                        .toList())),
                          ),
                        )
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() {
    return Future.value(true);
  }

  goHome() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new QHomePage()),
    );
  }
}
