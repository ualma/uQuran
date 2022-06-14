import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:toast/toast.dart';

import 'Chanal.dart';
import 'EnDeCode.dart';
import 'Fav.dart';
import 'FavDua.dart';
import 'FavIbni.dart';
import 'FavJalalein.dart';
import 'FavJianming.dart';
import 'FavMuhtasar.dart';
import 'FavMuyassar.dart';
import 'FavZarif.dart';
import 'MyBtn.dart';
import 'MyTheme.dart';
import 'QSPage.dart';
import 'QSearch.dart';
import 'QTFav.dart';
import 'Resources.dart';
import 'SQL.dart';
import 'Setting.dart';
// import 'device.dart';

class Q extends GetxController {
  String appVersion = '1.0.0';
  int appVersionNumber = 3;
  int databaseVersionNumber = 8;
  int haptiyakZipVersionNumber = 3;
  static const platform = const MethodChannel('myapp/CHANNEL');
  final MyTheme theme = MyTheme();
  final Resources resources = Resources();
  // final Device device = Device();
  final Setting setting = Setting();
  final EnDeCode code = EnDeCode();
  final bool isLoadUrl = false;
  final SQL sql = SQL();
  final Fav fav = Fav();
  final FavIbni favIbni = FavIbni();

  final FavJianming favJianming = FavJianming();
  final FavMuyassar favMuyassar = FavMuyassar();
  final FavZarif favZarif = FavZarif();
  final FavMuhtasar favMuhtasar = FavMuhtasar();
  final FavJalalein favJalalein = FavJalalein();
  final FavDua favDua = FavDua();

  final lang = "".obs;
  final langTitle = "ئۇيغۇرچە".obs;
  final showTarjimaSani = 1.obs;
  final showTarjimaSaniChangeCount = 1.obs;
  final arabicText = true.obs;

  final muahhmadsalih = true.obs;
  final hayattarjimisi = false.obs;
  final aalimTarjimiai = false.obs;
  final yusupmuhahmadtarjimisi = false.obs;

  final showTarjimaHanyu = false.obs;
  final showTarjimaEnglish = false.obs;
  final showTarjimaTurky = false.obs;

  final arabicTitle = "Traditional Arabic".obs;
  final arabicfontFamily = "Q".obs;
  final arabicFontHeightFactor = 2.0.obs;

  final uyghurTitle = "ALKATIP".obs;
  final uyghurfontFamily = "ALKATIP".obs;
  final color = "".obs;

  final arabicFontSize = 24.obs;
  final uyghurFontSize = 14.obs;

  BuildContext myContext;

  final qraatName = "".obs;
  final qraatID = 0.obs;

  final red = Colors.red;

  final qAServerPort = 9901.obs;

  final qTFav = Get.put(QTFav());
  final isQ = false.obs;

  myInit(bool _isQ) async {
    isQ.value = _isQ;
    await getMainPath();
    setting.initQ(this);
    await setting.init();
    await setLang(await setting.getSetting("lang", ""));
    code.initQ(this);
    sql.initQ(this);
    fav.initQ(this);
    favIbni.initQ(this);
    favJianming.initQ(this);
    favMuyassar.initQ(this);
    favZarif.initQ(this);
    favMuhtasar.initQ(this);
    favJalalein.initQ(this);
    favDua.initQ(this);
  }

  List<Map> fontListUyghur = [
    {'title': "ALKATIP", 'fontFamily': "ALKATIP"},
    {'title': "Alp Ekran", 'fontFamily': "Alp"},
    {'title': "UKIJ Tuz", 'fontFamily': "UKIJTuz"},
    {'title': "UKIJ Tuz Tom", 'fontFamily': "UKIJTuT"},
  ];
  List<Map> fontList = [
    {'title': "Traditional Arabic", 'fontFamily': "Q"},
    {'title': "Amiri Quran", 'fontFamily': "AQ"},
    {'title': "noorehira", 'fontFamily': "noorehira"},
    {'title': "Al Qalam Quran", 'fontFamily': "AlQQ"},
    {'title': "Al Qalam Quran Majeed", 'fontFamily': "AlQQM"},
    {'title': "Al Qalam Quran Majeed 1", 'fontFamily': "AlQQM1"},
    {'title': "Al Qalam Quran Majeed 2", 'fontFamily': "AlQQM2"}
  ];

  List<Map> langList = [
    {'title': "ئۇيغۇچە", 'lang': ""},
    {'title': "中文", 'lang': "zh-CN"},
    {'title': "English", 'lang': "en-US"},
    {'title': "Türk", 'lang': "tr-TR"},
    {'title': "عربي", 'lang': "ar-SA"}
  ];
  List<String> harif = [
    "ا",
    "ب",
    "ت",
    "ث",
    "ج",
    "ح",
    "خ",
    "د",
    "ذ",
    "ر",
    "ز",
    "س",
    "ش",
    "ص",
    "ض",
    "ط",
    "ظ",
    "ع",
    "غ",
    "ف",
    "ق",
    "ك",
    "ل",
    "م",
    "ن",
    "ه",
    "و",
    "ي"
  ];
  List<List<int>> para = [
    [1, 1, 1],
    [2, 2, 142],
    [3, 2, 253],
    [4, 3, 93],
    [5, 4, 24],
    [6, 4, 148],
    [7, 5, 82],
    [8, 6, 111],
    [9, 7, 88],
    [10, 8, 41],
    [11, 9, 93],
    [12, 11, 6],
    [13, 12, 53],
    [14, 15, 1],
    [15, 17, 1],
    [16, 18, 75],
    [17, 21, 1],
    [18, 23, 1],
    [19, 25, 21],
    [20, 27, 56],
    [21, 29, 46],
    [22, 33, 31],
    [23, 36, 28],
    [24, 39, 32],
    [25, 41, 47],
    [26, 46, 1],
    [27, 51, 31],
    [28, 58, 1],
    [29, 67, 1],
    [30, 78, 1]
  ];
  List<int> sc = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    8,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    7,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];

  void updateShowTarjimaSani() {
    int count = 0;
    if (muahhmadsalih.value) count++;
    if (hayattarjimisi.value) count++;
    if (aalimTarjimiai.value) count++;
    if (yusupmuhahmadtarjimisi.value) count++;
    if (showTarjimaHanyu.value) count++;
    if (showTarjimaEnglish.value) count++;
    if (showTarjimaTurky.value) count++;
    showTarjimaSani.value = count;
    showTarjimaSaniChangeCount.value += 1;
  }

  setcontext(BuildContext _context) {
    myContext = _context;
  }

  setLang(String _lang) async {
    lang.value = _lang;
    langTitle.value =
        langList.firstWhere((item) => item['lang'] == _lang)["title"];
    resources.setLang(_lang);
    String font = uyghurfontFamily.value;
    theme.setLang(_lang, font, color.value, this);
    this.setting.saveSetting('lang', _lang);
    updateShowTarjimaSani();
    Get.changeTheme(theme.theme);
  }

  getAppVersion() {
    return '$appVersion-$appVersionNumber';
  }

  // getUniqueId() async {
  //   return await device.getId();
  // }

  toast(String msg) {
    ToastContext().init(myContext);
    Toast.show(msg,
        duration: 3,
        textStyle: this.theme.textStyleToast,
        backgroundColor: this.theme.bgColorToast);
  }

  showSnackBar(String msg) {
    ScaffoldMessenger.of(myContext).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  saveImage(String fileUrl) async {
    String fileName = fileUrl.substring(fileUrl.lastIndexOf("/"));
    File file1 = new File(fileUrl);
    Uint8List dic0 = await file1.readAsBytes();
    final result =
        await ImageGallerySaver.saveImage(dic0, quality: 100, name: fileName);
    toast(resources.saved);
    return result;
  }

  showDefaultYearPicker(BuildContext context, {DateTime initialDate}) async {
    final DateTime dateTime = await showDatePicker(
      context: context,
      //定义控件打开时默认选择日期
      initialDate: initialDate,
      //定义控件最早可以选择的日期
      firstDate: DateTime(2018, 1),
      //定义控件最晚可以选择的日期
      lastDate: DateTime(3000, 1),

      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.dark(),
          child: child,
        );
      },
      // locale: Locale('zh'),
    );
    if (dateTime != null && dateTime != initialDate) {
      return dateTime;
    } else {
      return initialDate;
    }
  }

  bool isAndroid() {
    return Platform.isAndroid;
  }

  bool isIOS() {
    return Platform.isIOS;
  }

  zhendong({FeedbackType type = FeedbackType.heavy}) async {
    bool canVibrate = await Vibrate.canVibrate;
    if (canVibrate) {
      Vibrate.feedback(type);
    }
  }

  String addTextIndent(String updateContent) {
    return '\t' + updateContent.replaceAll('\n', '\n\t');
  }

  isPhone() {
    return Platform.isIOS || Platform.isAndroid;
  }

  requestPermission() async {
    if (isPhone()) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.storage,
      ].request();

      final info = statuses[Permission.storage].toString();
      print(info);
    }
  }

  requestPermissionInstalAPK() async {
    if (isPhone()) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.requestInstallPackages,
      ].request();

      final info = statuses[Permission.requestInstallPackages].toString();
      print(info);
    }
  }

  btn(String text, {VoidCallback onPressed, IconData icon}) {
    return MyBtn(text, onPressed: onPressed, icon: icon);
  }

  Future<ImageProvider> getAssetImageDecode(String name) async {
    ByteData data = await rootBundle.load(name);
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    bytes = code.decode(bytes);
    return MemoryImage(bytes);
  }

  Future<String> getAssetFontBase64(String name) async {
    ByteData data = await rootBundle.load(name);
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    return code.getBase64(bytes);
  }

  String mainPath = "";
  getMainPath() async {
    if (Platform.isIOS) {
      mainPath = await Channel().getLibPath();
    } else if (Platform.isMacOS) {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      mainPath = appDocDir.path;
    } else if (Platform.isWindows) {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      mainPath = appDocDir.path;
    } else {
      mainPath = (await getExternalStorageDirectory()).path;
      await loadMainPath();
    }
    return mainPath;
  }

  loadMainPath() {
    if (!isQ.value) {
      bool ok = false;
      try {
        Directory(mainPath.substring(0, mainPath.lastIndexOf("/"))).listSync();
        mainPath = mainPath.substring(0, mainPath.lastIndexOf("/"));
        ok = true;
      } catch (e) {
        print(e);
      }
      if (mainPath.length > 1 && ok == true) {
        loadMainPath();
      }
    }
  }

  String getUrlHtml(String html) {
    return html.replaceAll(
        'class="text-itag"', 'class="text-itag" onclick="go(this)"');
  }

  List<dynamic> suraName;
  Future<List<Map>> getSuraName() async {
    if (suraName == null) {
      suraName = await sql.select('select id,n,un from q_sura');
    }
    return suraName;
  }

  goUrl(String t) async {
    List<Map> sura = await getSuraName();
    int s = 0;
    int a = 0;
    List<Map> ss = [];
    sura.forEach((element) {
      if (t.contains(element["n"]) || t.contains(element["un"])) {
        s = element["id"];
        ss.add(element);
        // print(element);
      } else if (t.contains("ھەشر")) {
        s = 59;
      } else if (t.contains("ئىسرا")) {
        s = 17;
      }
    });
    if (ss.length == 2) {
      // print("ss:$ss");
      if (ss[0]["n"].toString().length > ss[1]["n"].toString().length) {
        s = ss[0]["id"];
      } else {
        s = ss[1]["id"];
      }
    }
    String san = "";
    bool b = false;
    for (int i = 0; i < t.length; i++) {
      String c = t[i];
      if (c == "0" ||
          c == "1" ||
          c == "2" ||
          c == "3" ||
          c == "4" ||
          c == "5" ||
          c == "6" ||
          c == "7" ||
          c == "8" ||
          c == "9") {
        b = true;
        san += c;
      } else {
        if (b == true) {
          break;
        }
      }
    }
    if (san.length > 0) {
      a = int.parse(san);
    }

    // print("s:$s san:$san b:$b aya:$a");
    if (s == 0 || a == 0) {
      qTFav.suraid.value = 1;
      qTFav.ayaid.value = 1;
      updateAyas(qTFav.suraid.value);
    }

    showDialog(
        context: myContext,
        builder: (context) {
          List<Widget> ac = [];
          if (s != 0 && a != 0) {
            ac.add(TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(
                resources.haa,
                style: theme.textStyle,
              ),
            ));
          }
          ac.add(TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              resources.kaytix,
              style: theme.textStyle,
            ),
          ));
          return AlertDialog(
            // contentPadding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            title: Column(
              children: [
                Center(
                  child: Text(
                    resources.ayatkatizberix,
                    textAlign: TextAlign.center,
                    textDirection: theme.dir,
                    style: theme.title2,
                  ),
                ),
                t == ""
                    ? Container()
                    : Center(
                        child: Text(
                          "[$t]",
                          textAlign: TextAlign.center,
                          textDirection: theme.dir,
                          style: theme.title2,
                        ),
                      ),
              ],
            ),
            content: s == 0 || a == 0
                ? Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.all(15),
                    child: Container(
                      // margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Row(
                        textDirection: theme.dir,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              // margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              decoration: BoxDecoration(
                                color: theme.bgColor1,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
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
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            alignment: Alignment.center,
                            // margin: EdgeInsets.fromLTRB(5, 0, 15, 0),
                            padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                            decoration: BoxDecoration(
                              color: theme.bgColor1,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                reverse: false,
                                padding: EdgeInsets.all(0.0),
                                physics: BouncingScrollPhysics(),
                                child: Obx(() => Column(
                                      children: qTFav.ayas
                                          .map((item) => Container(
                                                child: ayasW(item, () {
                                                  Navigator.of(context)
                                                      .pop(true);
                                                }),
                                              ))
                                          .toList(),
                                    ))),
                          ),
                        ],
                      ),
                    ))
                : Container(
                    alignment: Alignment.center,
                    height: 120,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          resources.tapsilatiniKuramsi,
                          textAlign: TextAlign.center,
                          textDirection: theme.dir,
                          style: theme.textStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            "$s. ${sura[s - 1]["n"]}  [$a]",
                            textAlign: TextAlign.center,
                            textDirection: theme.dir,
                            style: theme.title2a,
                          ),
                        ),
                      ],
                    )),
            actions: ac,
            actionsAlignment: MainAxisAlignment.center,
          );
        }).then((value) {
      if (value != null) {
        if (value) {
          if (s == 0 || a == 0) {
            gotoSura(qTFav.suraid.value, qTFav.ayaid.value);
          } else {
            gotoSura(s, a);
          }
        }
      }
    });
  }

  suraW(item) {
    return Obx(() => Container(
          margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
          color: qTFav.suraid == item['id'] ? theme.bgColor1 : theme.bgColor,
          child: Column(
            children: [
              item["id"] != 1
                  ? Container(
                      height: 2,
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      color: theme.bgColor3,
                    )
                  : Container(),
              ListTile(
                onTap: () {
                  updateAyas(item['id']);
                },
                title: Center(
                  child: Text(
                    item["id"].toString() + '. ' + item['n'],
                    textDirection: TextDirection.rtl,
                    style: theme.title2a,
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  ayasW(item, Function() click) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      color: theme.bgColor,
      child: Column(
        children: [
          item["i"] != 0
              ? Container(
                  height: 2,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  color: theme.bgColor3,
                )
              : Container(),
          ListTile(
            onTap: () {
              qTFav.ayaid.value = item["id"];
              click();
            },
            title: Center(
              child: Text(
                item["id"].toString(),
                textDirection: theme.dir,
                style: theme.title2a,
              ),
            ),
          ),
        ],
      ),
    );
  }

  updateAyas(int id) {
    qTFav.suraid.value = id;
    List<Map> ayas = [];
    for (int i = 0; i < sc[id - 1]; i++) {
      ayas.add({'id': i + 1, "i": i});
    }

    qTFav.ayas.value = ayas;
  }

  void gotoSura(id, aya) {
    Navigator.push(
      myContext,
      new MaterialPageRoute(builder: (context) => new QSPage(id, aya: aya)),
    );
  }

  getFullHtml(String htmlBody, {bool isP = false}) async {
    String htmlPath = "";
    if (!isP) {
      htmlPath = await rootBundle.loadString("assets/images/q/t.html");
    } else {
      htmlPath = htmlBody;
    }

    String font =
        await getAssetFontBase64('assets/fonts/${uyghurfontFamily.value}.ttf');
    String fonta =
        await getAssetFontBase64('assets/fonts/${arabicfontFamily.value}.ttf');
    String fn =
        "@font-face {font-family: '${uyghurfontFamily.value}';src: url(data:font/truetype;charset=utf-8;base64,$font) format('truetype'); font-weight: normal;font-style: normal;}";
    String fna =
        "@font-face {font-family: '${arabicfontFamily.value}';src: url(data:font/truetype;charset=utf-8;base64,$fonta) format('truetype'); font-weight: normal;font-style: normal;}";
    htmlPath = htmlPath.replaceAll("/**app.font**/", "$fn $fna");

    htmlPath = htmlPath.replaceAll("ALKATIP", uyghurfontFamily.value);
    htmlPath =
        htmlPath.replaceAll("Traditional Arabic", arabicfontFamily.value);
    htmlPath = htmlPath.replaceAll("16px", "${uyghurFontSize.value}px");
    htmlPath = htmlPath.replaceAll("18px", "${arabicFontSize.value}px");
    htmlPath = htmlPath.replaceAll("20px", "${arabicFontSize.value}px");
    htmlPath = htmlPath.replaceAll("36px", "${arabicFontSize.value + 12}px");

    htmlPath = htmlPath.replaceAll("#fef6e4", theme.cssbackgroundcolor);
    htmlPath = htmlPath.replaceAll("#453e2d", theme.csscolor);
    htmlPath = htmlPath.replaceAll("#3f51b5", theme.csscolorb);
    int p = ((arabicFontHeightFactor.value != 0
                ? arabicFontHeightFactor.value
                : 2) *
            100)
        .toInt();

    if (arabicfontFamily.value == "AQ") {
      p += 50;
    }

    htmlPath = htmlPath.replaceAll("line-height: 250%;", "line-height: $p%");
    if (!isP) {
      return htmlPath.replaceAll("<!--body-->", htmlBody);
    } else {
      return htmlPath;
    }
  }

  goSearch() {
    Navigator.push(
      myContext,
      new MaterialPageRoute(builder: (context) => new QSearch()),
    );
  }

  String getRedColor(String str, String search) {
    if (search == '') return str;
    return str.replaceAll(search, "<b>$search</b>");
  }

  IconData iconsnavigatebefore() {
    // print(theme.dir);
    if (theme.dir == TextDirection.ltr) {
      return Icons.navigate_next_rounded;
    } else {
      return Icons.navigate_before;
    }
  }

  IconData iconsnavigatenextrounded() {
    if (theme.dir == TextDirection.ltr) {
      return Icons.navigate_before;
    } else {
      return Icons.navigate_next_rounded;
    }
  }

  String tirnakSol() {
    if (theme.dir == TextDirection.rtl) {
      return "﴿";
    } else {
      return "﴾";
    }
  }

  String tirnakOng() {
    if (theme.dir == TextDirection.ltr) {
      return "﴿";
    } else {
      return "﴾";
    }
  }

  ltr() {
    if (theme.dir == TextDirection.ltr) {
      return "ltr";
    } else {
      return "rtl";
    }
  }

  void copyText(String s) {
    Clipboard.setData(ClipboardData(text: s));
    toast(resources.koquruldi);
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
