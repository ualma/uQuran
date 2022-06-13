import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'Q.dart';

class JsToast {
  final Q q;
  JsToast(this.q);
  JavascriptChannel toasterJavascriptChannel(
      BuildContext context, WebViewController webViewController,
      [Null Function(dynamic msg) onMessage]) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) async {
          try {
            String jstr = message.message.toString();
            var jo = json.decode(jstr);
            if (onMessage != null) {
              onMessage(jo);
            }
            switch (jo["t"]) {
              case "goUrl":
                q.goUrl(jo["msg"]);
                break;
              case "goUrlSA":
                q.gotoSura(jo["s"], jo["a"]);
                break;
              default:
            }
          } catch (e) {}
        });
  }
}
