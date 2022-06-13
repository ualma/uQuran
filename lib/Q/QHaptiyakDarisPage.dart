import 'dart:convert';
import 'dart:io';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'MyBackSetting.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'MyJavascriptChannel.dart';
import 'Q.dart';
import 'QAServer.dart';

class QHaptiyakDarisPage extends StatefulWidget {
  QHaptiyakDarisPage(this.url, this.hPath, {Key key}) : super(key: key);
  final String url;
  final String hPath;
  @override
  State<QHaptiyakDarisPage> createState() => _QHaptiyakDarisPageState();
}

class _QHaptiyakDarisPageState extends State<QHaptiyakDarisPage>
    with SingleTickerProviderStateMixin {
  final q = Get.put(Q());
  String html = "";
  WebViewController _webViewController;
  final assetsAudioPlayer = AssetsAudioPlayer();
  QAServer qAServer;
  @override
  void initState() {
    super.initState();
    load();
  }

  load() async {
    setState(() {});
    qAServer = QAServer();
    await qAServer.initQ(q, rootPath: widget.hPath + "/h/");
    html = await rootBundle.loadString("assets/images/q/p.html");
    String f = "/${widget.url}";
    String md5Url = getMd5Url(f);

    String fn = widget.hPath + "/h/" + md5Url;
    print(fn);
    File fl = File(fn);
    if (fl.existsSync()) {
      List<int> bytes = q.code.decode(fl.readAsBytesSync(), isGzip: false);
      String body = q.code.decodeBytes(bytes);

      int port = q.qAServerPort.value;
      String host = "http://127.0.0.1:$port/";

      List<String> urls = [];
      int index = 0;

      do {
        index = body.indexOf('images/', index + 1);
        if (index != -1) {
          int end = body.indexOf('"', index + 1);
          String url = body.substring(index, end);

          urls.add(url);
        }
      } while (index != -1);

      // for (int i = 0; i < fs.length; i++) {
      for (int j = 0; j < urls.length; j++) {
        String url = urls[j];
        // if (urls == fs[i]["f"]) {
        String url1 =
            "$host${getMd5Url("/" + url)}${url.substring(url.lastIndexOf("."))}";
        body = body.replaceAll(url, url1);
        // }
      }
      // }

      // for (int i = 0; i < urls.length; i++) {
      //   String url = urls[i]["url"];
      //   String url2 = urls[i]["url2"];
      //   String url3 = host + url2;
      //   body = body.replaceAll(url, url3);
      // }

      html = html.replaceAll("<!--body-->", body);
    }

    _loadHtmlAssets(_webViewController);
  }

  getMd5Url(url) {
    // for (int i = 0; i < fs.length; i++) {
    //   if (url == fs[i]["f"]) {
    //     return fs[i]["md5"];
    //   }
    // }
    return q.code.generateMD5(url);
  }

  next() async {
    // int maxId = 0;
    // if (id == 0) {
    //   maxId = await q.sql
    //       .selectValue('select min(id) as id from h_ranges where sura_id=$sid');
    // } else {
    //   maxId = await q.sql
    //       .selectValue('select min(id) as id from h_ranges where id>$id');
    // }
    // if (maxId != null) {
    //   id = maxId;
    //   int vsid =
    //       await q.sql.selectValue('select sura_id from h_ranges where id=$id');
    //   if (vsid != sid) {
    //     sid = vsid;
    //     id = 0;
    //   }
    //   load();
    // } else {
    //   q.toast(q.resources.buangahirkisi);
    // }
  }

  before() async {
    // int minId = 0;
    // if (id == 0) {
    //   if (sid == 1) {
    //     q.toast(q.resources.buangaldinkisi);
    //     return;
    //   }
    //   sid--;
    //   minId = await q.sql
    //       .selectValue('select max(id) as id from h_ranges where sura_id=$sid');
    // } else if (ibniAya == 1) {
    //   id = 0;
    //   load();
    //   return;
    // } else {
    //   minId = await q.sql
    //       .selectValue('select max(id) as id from h_ranges where id<$id');
    // }

    // if (minId != null) {
    //   id = minId;
    //   sid =
    //       await q.sql.selectValue('select sura_id from h_ranges where id=$id');
    //   load();
    // } else {
    //   q.toast(q.resources.buangaldinkisi);
    // }
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
                load();
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
                    JsToast(q).toasterJavascriptChannel(
                        context, _webViewController, (msg) {
                      print(msg);
                      play(msg["msg"]);
                    }),
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
              // Container(
              //   height: 50,
              //   decoration: BoxDecoration(
              //     color: q.theme.bgColor1,
              //     borderRadius: BorderRadius.all(Radius.circular(10)),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     textDirection: q.theme.dir,
              //     children: [
              //       TextButton(
              //           onPressed: () {
              //             before();
              //           },
              //           child: Row(
              //             textDirection: q.theme.dir,
              //             children: [
              //               Icon(
              //                 q.iconsnavigatenextrounded(),
              //                 color: q.theme.btnColor,
              //               ),
              //               Text(
              //                 q.resources.aldinki,
              //                 style: q.theme.btnText1,
              //               ),
              //             ],
              //           )),
              //       TextButton(
              //           onPressed: () {
              //             next();
              //           },
              //           child: Row(
              //             textDirection: q.theme.dir,
              //             children: [
              //               Text(
              //                 q.resources.keyinki,
              //                 style: q.theme.btnText1,
              //               ),
              //               Icon(
              //                 q.iconsnavigatebefore(),
              //                 color: q.theme.btnColor,
              //               ),
              //             ],
              //           )),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  } //加载本地文件

  _loadHtmlAssets(WebViewController controller) async {
    if (html == "") {
      //weait 1 second
      Future.delayed(Duration(milliseconds: 300)).then((_) async {
        _loadHtmlAssets(controller);
      });
    } else {
      String _html = await q.getFullHtml(html, isP: true);
      controller.loadUrl(Uri.dataFromString(_html,
              mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
          .toString());
    }
  }

  play(url) async {
    String f = q.code.generateMD5("/$url");
    // Map fn;
    // for (int i = 0; i < fs.length; i++) {
    //   if (f == fs[i]["f"]) {
    //     fn = fs[i];
    //     break;
    //   }
    // }

    int port = q.qAServerPort.value;
    String homeUrl = "http://127.0.0.1:$port/$f.mp3";
    try {
      await assetsAudioPlayer.open(
        Audio.network(homeUrl),
      );
    } catch (t) {
      print(t);
      //mp3 unreachable
    }
    assetsAudioPlayer.play();
  }

  @override
  void dispose() {
    assetsAudioPlayer.dispose();
    super.dispose();
  }
}
