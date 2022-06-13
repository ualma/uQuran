import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'MyBackSetting.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'MyJavascriptChannel.dart';
import 'Q.dart';

class QJanmingTapPage extends StatefulWidget {
  QJanmingTapPage(this.sid, this.id, {Key key, this.searchWord = ''})
      : super(key: key);
  final int sid;
  final int id;
  final String searchWord;
  @override
  State<QJanmingTapPage> createState() => _QJanmingTapPageState();
}

class _QJanmingTapPageState extends State<QJanmingTapPage>
    with SingleTickerProviderStateMixin {
  final q = Get.put(Q());
  int id = 0;
  int sid = 0;
  String ibnikasir = "";
  bool fav = false;
  WebViewController _webViewController;
  int ibniAya = 0;
  int ibniAyaMax = 0;
  @override
  void initState() {
    id = widget.id;
    sid = widget.sid;
    super.initState();
    load();
  }

  load() async {
    fav = q.favJianming.isQFavJianming(id);

    List<Map> sura =
        await q.sql.select('select id,n from q_sura where id=$sid');

    ibnikasir =
        "<table class='st ${q.ltr()}'><tr><td class='a'>${sura[0]["id"]}.${q.resources.sura}</td><td class='stt'>${sura[0]["n"]}</td><td class='b'>${q.sc[sura[0]["id"] - 1]} ${q.resources.ayat}</td></tr></table>";
    if (id != 0) {
      Map m = await q.sql.selectOne(
          'select (SELECT index_from FROM h_ranges where h_ranges.id=h_language_range.range_id) as aya,(SELECT index_to FROM h_ranges where h_ranges.id=h_language_range.range_id) as ayaMax,total_ayas_meaning,ayas_subject,ayas_translation,ayas_explaination FROM h_language_range where range_id=$id');

      ibniAya = m["aya"];
      ibniAyaMax = m["ayaMax"];

      List<Map> ibAya = await q.sql.select(
          "SELECT aya,text,ug_text FROM a_Q_text where sura=$sid and [aya]>=$ibniAya and [aya]<=$ibniAyaMax");
      String ibAyaText = "";

      for (int i = 0; i < ibAya.length; i++) {
        ibAyaText +=
            "<span  onclick='goSa(${widget.id},${ibAya[i]["aya"]})'>${ibAya[i]["text"]}﴿${ibAya[i]["aya"]}﴾ </span>";
      }
      ibnikasir = "$ibnikasir<p class='text-lang-ar'>$ibAyaText</p>";

      ibnikasir =
          "$ibnikasir<p class='ibnikasirTitle'>${m["ayas_subject"]}</p>";

      ibnikasir =
          "$ibnikasir<p class='text-lang-en'>【译文】</p><p class='text-lang-en'>${m["ayas_translation"]}</p>";
      if (m["total_ayas_meaning"] != null) {
        ibnikasir =
            "$ibnikasir<p class='text-lang-en'>『提示』</p><p class='text-lang-en'>${m["total_ayas_meaning"]}</p>";
      }
      ibnikasir =
          "$ibnikasir<p class='text-lang-en'>【注释】</p><p class='text-lang-en'>${m["ayas_explaination"]}</p>";
    } else {
      Map m = await q.sql.selectOne(
          'select title,intro FROM h_introductions where sura_id=$sid');
      ibnikasir =
          "$ibnikasir<p class='ibnikasirTitle'>${m["title"]}</p><p class='text-lang-en'>${m["intro"]}</p>";
    }
    ibnikasir = rpBr(ibnikasir);
    setState(() {});
    _loadHtmlAssets(_webViewController);
  }

  rpBr(String html) {
    return html.replaceAll("<br />", "<p/><p class='text-lang-en'>");
  }

  next() async {
    int maxId = 0;
    if (id == 0) {
      maxId = await q.sql
          .selectValue('select min(id) as id from h_ranges where sura_id=$sid');
    } else {
      maxId = await q.sql
          .selectValue('select min(id) as id from h_ranges where id>$id');
    }
    if (maxId != null) {
      id = maxId;
      int vsid =
          await q.sql.selectValue('select sura_id from h_ranges where id=$id');
      if (vsid != sid) {
        sid = vsid;
        id = 0;
      }
      load();
    } else {
      q.toast(q.resources.buangahirkisi);
    }
  }

  before() async {
    int minId = 0;
    if (id == 0) {
      if (sid == 1) {
        q.toast(q.resources.buangaldinkisi);
        return;
      }
      sid--;
      minId = await q.sql
          .selectValue('select max(id) as id from h_ranges where sura_id=$sid');
    } else if (ibniAya == 1) {
      id = 0;
      load();
      return;
    } else {
      minId = await q.sql
          .selectValue('select max(id) as id from h_ranges where id<$id');
    }

    if (minId != null) {
      id = minId;
      sid =
          await q.sql.selectValue('select sura_id from h_ranges where id=$id');
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
                    id != 0
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                fav = !fav;
                              });
                              if (!fav) {
                                q.favJianming.removeQFavJianming(id);
                              } else {
                                q.favJianming.addQFavJianming(id);
                              }
                            },
                            icon: Icon(
                              Icons.book_rounded,
                              color:
                                  fav ? q.theme.btnColor : q.theme.textColor2,
                            ),
                          )
                        : Container(),
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
                    id != 0
                        ? IconButton(
                            onPressed: () {
                              q.setting.saveSettingInt("JianmingCPage", id);
                              q.toast(q.resources.okupkalganjaysaklandi);
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.save_as_rounded,
                              color: q.theme.btnColor,
                            ))
                        : Container(),
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
