import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'MyBackSetting.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'MyJavascriptChannel.dart';
import 'Q.dart';

class QIbniTapPage extends StatefulWidget {
  QIbniTapPage(this.id, {Key key, this.searchWord = ''}) : super(key: key);
  final int id;
  final String searchWord;
  @override
  State<QIbniTapPage> createState() => _QIbniTapPageState();
}

class _QIbniTapPageState extends State<QIbniTapPage>
    with SingleTickerProviderStateMixin {
  final q = Get.put(Q());
  int id = 0;
  String ibnikasir = "";
  bool fav = false;
  WebViewController _webViewController;
  @override
  void initState() {
    id = widget.id;
    super.initState();
    load();
  }

  load() async {
    fav = q.favIbni.isQFavIbni(id);
    Map m = await q.sql.selectOne(
        'SELECT sura,aya,ayaMax,title,(SELECT mazmun FROM a_ibnikasir_m where id=a_ibnikasir.id) as mazmun FROM a_ibnikasir where id=$id');

    int ibniAya = m["aya"];
    int ibniAyaMax = m["ayaMax"];

    ibnikasir =
        "<p class='ibnikasirTitle'>${m["title"]}</p> ${m['mazmun']}<hr>";

    print("ibniAya:$ibniAya ibniAyaMax:$ibniAyaMax");
    List<Map> ibAya = await q.sql.select(
        "SELECT aya,text,ug_text FROM a_Q_text where sura=${m["sura"]} and [aya]>=$ibniAya and [aya]<=$ibniAyaMax");
    String ibAyaText = "";
    String ibAyaTextU = "";
    String ibAyaTextUold = "";
    for (int i = 0; i < ibAya.length; i++) {
      ibAyaText +=
          "<span  onclick='goSa(${m["sura"]},${ibAya[i]["aya"]})'>${ibAya[i]["text"]}﴿${ibAya[i]["aya"]}﴾ </span>";
      if (ibAyaTextUold != ibAya[i]["ug_text"]) {
        ibAyaTextU +=
            "<span  onclick='goSa(${m["sura"]},${ibAya[i]["aya"]})'>${ibAya[i]["ug_text"]}</span>";
      }
      ibAyaTextUold = ibAya[i]["ug_text"];
    }
    ibnikasir = q.getUrlHtml(
        "<p class='text-lang-ar'>$ibAyaText</p><p>$ibAyaTextU</p>$ibnikasir");

    List<Map> sura =
        await q.sql.select('select id,n from q_sura where id=${m["sura"]}');

    String html =
        "<table class='st ${q.ltr()}'><tr><td class='a'>${sura[0]["id"]}.${q.resources.sura}</td><td class='stt'>${sura[0]["n"]}</td><td class='b'>${q.sc[sura[0]["id"] - 1]} ${q.resources.ayat}</td></tr></table>";
    ibnikasir = html + ibnikasir;
    setState(() {});
    _loadHtmlAssets(_webViewController);
  }

  next() async {
    var maxId = await q.sql
        .selectValue('select min(id) as id from a_ibnikasir where id>$id');
    if (maxId != null) {
      id = maxId;
      load();
    } else {
      q.toast(q.resources.buangahirkisi);
    }
  }

  before() async {
    var minId = await q.sql
        .selectValue('select max(id) as id from a_ibnikasir where id<$id');
    if (minId != null) {
      id = minId;
      load();
    } else {
      q.toast(q.resources.buangaldinkisi);
    }
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
                decoration: BoxDecoration(
                  color: q.theme.bgColor1,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textDirection: q.theme.dir,
                  children: [
                    MediaQuery.of(context).size.width > 420
                        ? TextButton(
                            onPressed: () {
                              before();
                            },
                            child: Row(
                              textDirection: q.theme.dir,
                              children: [
                                Icon(
                                  q.iconsnavigatenextrounded(),
                                  color: q.theme.btnColor,
                                ),
                                Text(
                                  q.resources.aldinki,
                                  style: q.theme.btnText1,
                                ),
                              ],
                            ))
                        : IconButton(
                            onPressed: () {
                              before();
                            },
                            icon: Icon(
                              q.iconsnavigatenextrounded(),
                              color: q.theme.btnColor,
                            ),
                          ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          fav = !fav;
                        });
                        if (!fav) {
                          q.favIbni.removeQFavIbni(id);
                        } else {
                          q.favIbni.addQFavIbni(id);
                        }
                      },
                      icon: Icon(
                        Icons.book_rounded,
                        color: fav ? q.theme.btnColor : q.theme.textColor2,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          q.goSearch();
                        },
                        icon: Icon(
                          Icons.search,
                          color: q.theme.btnColor,
                        )),
                    IconButton(
                      onPressed: () {
                        q.goUrl("");
                      },
                      icon: Icon(Icons.open_in_browser_rounded,
                          color: q.theme.textColor),
                    ),
                    IconButton(
                        onPressed: () {
                          q.setting.saveSettingInt("ibniCPage", id);
                          q.toast(q.resources.okupkalganjaysaklandi);
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.save_as_rounded,
                          color: q.theme.btnColor,
                        )),
                    MediaQuery.of(context).size.width > 420
                        ? TextButton(
                            onPressed: () {
                              next();
                            },
                            child: Row(
                              textDirection: q.theme.dir,
                              children: [
                                Text(
                                  q.resources.keyinki,
                                  style: q.theme.btnText1,
                                ),
                                Icon(
                                  q.iconsnavigatebefore(),
                                  color: q.theme.btnColor,
                                ),
                              ],
                            ))
                        : IconButton(
                            onPressed: () {
                              next();
                            },
                            icon: Icon(
                              q.iconsnavigatebefore(),
                              color: q.theme.btnColor,
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
      String ibs = ibnikasir;
      if (widget.searchWord != "") {
        ibs = ibnikasir.replaceAll(widget.searchWord,
            '<span style="color: red;">${widget.searchWord}</span>');
      }
      ibs = await q.getFullHtml(ibs);
      controller.loadUrl(Uri.dataFromString(ibs,
              mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
          .toString());
    }
  }
}
