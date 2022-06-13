import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'MyBackSetting.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'MyJavascriptChannel.dart';
import 'Q.dart';
import 'QSPage.dart';

class QTapPage extends StatefulWidget {
  QTapPage(this.sid, this.aya, {Key key}) : super(key: key);
  final int sid;
  final int aya;

  @override
  State<QTapPage> createState() => _QTapPageState();
}

class _QTapPageState extends State<QTapPage>
    with SingleTickerProviderStateMixin {
  final q = Get.put(Q());
  Map tapsir;
  Map muhtasar;
  List<String> tapsirList = [];
  String ibnikasir = "";
  TabController _tabController;
  WebViewController _webViewController;
  int tapid;
  @override
  void initState() {
    super.initState();
    load();
  }

  load() async {
    tapsirList = [
      q.resources.muhtasarTuruk,
      q.resources.muhtasarChina,
      q.resources.muhtasarEnglish,
      q.resources.muhtasarArapqa,
      q.resources.arjalalein,
      q.resources.zarif,
      q.resources.muyassarArabpa,
      q.resources.muyassar,
      q.resources.ibnikasir,
    ];
    tapid = tapsirList.length - 1;
    _tabController = TabController(
        length: tapsirList.length, vsync: this, initialIndex: tapid);

    List<Map> ib = await q.sql.select(
        'SELECT sura,aya,ayaMax,title,(SELECT mazmun FROM a_ibnikasir_m where id=a_ibnikasir.id) as mazmun FROM a_ibnikasir where (sura=${widget.sid} and [aya]=${widget.aya}) or (sura=${widget.sid} and aya<=${widget.aya} and ayaMax>=${widget.aya})');
    int ibniAya = widget.aya;
    int ibniAyaMax = widget.aya;
    for (int i = 0; i < ib.length; i++) {
      ibnikasir +=
          "<p class='ibnikasirTitle'>${ib[i]["title"]}</p> ${ib[i]['mazmun']}<hr>";
      ibniAya = min(ibniAya, ib[i]["aya"]);
      ibniAyaMax = max(ibniAyaMax, ib[i]["ayaMax"]);
    }
    print("ibniAya:$ibniAya ibniAyaMax:$ibniAyaMax");
    List<Map> ibAya = await q.sql.select(
        "SELECT aya,text,ug_text FROM a_Q_text where sura=${widget.sid} and [aya]>=$ibniAya and [aya]<=$ibniAyaMax");
    String ibAyaText = "";
    String ibAyaTextU = "";
    String ibAyaTextUold = "";
    for (int i = 0; i < ibAya.length; i++) {
      ibAyaText += "${ibAya[i]["text"]}﴿${ibAya[i]["aya"]}﴾ ";
      if (ibAyaTextUold != ibAya[i]["ug_text"]) {
        ibAyaTextU += "${ibAya[i]["ug_text"]}";
      }
      ibAyaTextUold = ibAya[i]["ug_text"];
    }
    ibnikasir =
        "<p class='text-lang-ar'>$ibAyaText</p><p>$ibAyaTextU</p>$ibnikasir";
    print("ibAyaText:$ibAyaText ibAyaTextU:$ibAyaTextU");

    tapsir = await q.sql.selectOne(
        'SELECT ar_muyassar,ug_muyassar,ug_zarif,ar_jalalein FROM a_tapsir where sura=${widget.sid} and [aya]=${widget.aya}');
    muhtasar = await q.sql.selectOne(
        'SELECT ar_text,en_text,cn_text,tr_text FROM a_tapsir_mukhtasar where sura=${widget.sid} and [aya]=${widget.aya}');
    setState(() {});
    _loadHtmlAssets(_webViewController);
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
                _loadHtmlAssets(_webViewController);
                setState(() {});
              }),
              Expanded(
                // height: 300,
                // color: q.red,
                child: WebView(
                  backgroundColor: q.theme.bgColor,
                  // initialUrl: "",
                  javascriptMode: JavascriptMode.unrestricted,
                  javascriptChannels: <JavascriptChannel>[
                    JsToast(q)
                        .toasterJavascriptChannel(context, _webViewController),
                  ].toSet(),
                  onWebViewCreated: (WebViewController controller) {
                    _webViewController = controller;
                    // if (widget.isLocalUrl) {
                    //   _loadHtmlAssets(controller);
                    // } else {
                    //   controller.loadUrl(widget.url);
                    // }
                    _loadHtmlAssets(controller);
                    controller
                        .canGoBack()
                        .then((value) => debugPrint(value.toString()));
                    controller
                        .canGoForward()
                        .then((value) => debugPrint(value.toString()));
                    controller.currentUrl().then((value) => debugPrint(value));
                  },
                  onPageFinished: (String value) {
                    _webViewController
                        .runJavascriptReturningResult('document.title')
                        .then((title) => debugPrint(title));
                  },
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: q.theme.bgColor1,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Row(
                  textDirection: q.theme.dir,
                  children: [
                    Container(
                      width: 40,
                      child: TextButton(
                        onPressed: () {
                          q.goUrl("");
                        },
                        child: Icon(Icons.open_in_browser_rounded,
                            color: q.theme.textColor),
                      ),
                    ),
                    Expanded(
                      child: TabBar(
                        controller: _tabController,
                        isScrollable: true,
                        labelStyle: q.theme.title4,
                        labelColor: q.theme.textColor,
                        indicatorColor: q.theme.textColor,
                        unselectedLabelColor: q.theme.textColor1,
                        onTap: (index) {
                          setState(() {
                            tapid = index;
                          });
                          _loadHtmlAssets(_webViewController);
                        },
                        tabs: tapsirList.map((e) {
                          return Tab(
                            child: Text(e),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  } //加载本地文件

  _loadHtmlAssets(WebViewController controller) async {
    if (ibnikasir == "") {
      //weait 1 second
      Future.delayed(Duration(milliseconds: 300)).then((_) async {
        _loadHtmlAssets(controller);
      });
    } else {
      String htmlPath = "";
      switch (tapid) {
        case 0:
          htmlPath = await q.getFullHtml(
              "<p class='text-lang-en'>${muhtasar["tr_text"]}</p>");
          break;
        case 1:
          htmlPath = await q.getFullHtml(
              "<p class='text-lang-en'>${muhtasar["cn_text"]}</p>");
          break;
        case 2:
          htmlPath = await q.getFullHtml(
              "<p class='text-lang-en'>${muhtasar["en_text"]}</p>");
          break;
        case 3:
          htmlPath = await q.getFullHtml(
              "<p class='text-lang-ar'>${muhtasar["ar_text"]}</p>");
          break;
        case 4:
          htmlPath = await q.getFullHtml(
              "<p class='text-lang-ar'>${tapsir["ar_jalalein"]}</p>");
          break;
        case 5:
          htmlPath = await q.getFullHtml(tapsir["ug_zarif"]);
          break;
        case 6:
          htmlPath = await q.getFullHtml(
              "<p class='text-lang-ar'>${tapsir["ar_muyassar"]}</p>");
          break;
        case 7:
          htmlPath = await q.getFullHtml(tapsir["ug_muyassar"]);
          break;
        case 8:
          htmlPath = await q.getFullHtml(q.getUrlHtml(ibnikasir));
          break;
        default:
      }

      controller.loadUrl(Uri.dataFromString(htmlPath,
              mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
          .toString());
    }
  }

  void gotoSura(id, aya) {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new QSPage(id, aya: aya)),
    );
  }
}
