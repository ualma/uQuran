import 'package:flutter/material.dart';

import 'Q.dart';

class MyTheme {
  ThemeData theme;
  TextStyle textStyle;
  TextStyle textStyleAyaNomue;
  TextStyle textStyleSuraNomue;
  TextStyle textStyleUyghurAyaNomur;
  TextStyle textStyleUyghurAyaTarjiman;
  TextStyle textStylePara;
  TextStyle textStyleToast;
  TextStyle title1;
  TextStyle title1Bold;
  TextStyle title1a;
  TextStyle title2;
  TextStyle title2a;
  TextStyle title3;
  TextStyle title3a;
  TextStyle title4;
  TextStyle title4a;
  TextStyle title5;
  TextStyle title5a;
  TextStyle titleQ;
  TextStyle titleQa;
  TextStyle titleQaT;
  TextStyle titleQaR;
  TextStyle title2en;
  TextStyle title6;
  TextStyle textHeight20;
  TextStyle textHeight20R;
  TextStyle textStyleLang;
  TextStyle textStyleLanga;
  TextDirection dir;
  TextAlign textAlignEnd = TextAlign.end;
  String fontFamily = "ALKATIP";
  String fontFamilya = 'AQ';
  String fontFamilyEn = 'Arial';
  Color bgColor = Color(0xFFfef6e4);
  Color bgColor1 = Color(0xFFf9efd8);
  Color bgColor2 = Color(0xFFf9eac8);
  Color bgColor3 = Color(0xFFece7dd);
  Color bgColorToast = Color(0xAA453e2d);
  Color textColor = Color(0xFF91740c);
  Color textColor1 = Color(0xFF453e2d);
  Color textColor2 = Color(0xFF857d7d);
  Color textColorAyaNomue = Color(0xFF9d9090);
  Color textColorComplet = Color(0xFF2ca33c);

  Color btnColor = Color(0xFF91740c);
  Color btnDownColor = Color(0xFFe3bc2f);
  Color btnTxtColor = Color(0xFFf9efd8);
  Color red = Colors.red;

  String cssbackgroundcolor = "#fef6e4";
  String csscolor = "#453e2d";
  String csscolorb = "#3f51b5";

  Color playerBgColor = Color(0xFFbaafa9);
  Color playerBgColor1 = Color(0xFF9d9090);
  Color playerBtnColor = Color(0xFF453e2d);
  Color playerBtnColor1 = Color(0xFFf9efd8);
  Color playerTimeColor = Color(0xFF91740c);
  Color playerTimeColor1 = Color(0xFF453e2d);

  ButtonStyle btnStyle;
  ButtonStyle btnStylea;
  ButtonStyle btnStyleAya;
  TextStyle btnText;
  TextStyle btnText1;
  EdgeInsets uFontPadding = EdgeInsets.fromLTRB(0, 0, 0, 0);
  double fontTopSize = 3;
  double fontBootomSize = 0;

  setLang(String lang, String font, String color, Q q) {
    fontFamily = q.uyghurfontFamily.value;
    fontFamilya = q.arabicfontFamily.value;
    double arabicFontSize = q.arabicFontSize.value.toDouble();
    double uyghurFontSize = q.uyghurFontSize.value.toDouble();
    double arabicFontHeightFactor = q.arabicFontHeightFactor.value.toDouble();
    if (fontFamilya == "AQ") {
      arabicFontHeightFactor += 0.5;
    }

    if (color == "") {
      bgColor = Color(0xFFfef6e4);
      bgColor1 = Color(0xFFf9efd8);
      bgColor2 = Color(0xFFf9eac8);
      bgColor3 = Color(0xFFece7dd);
      bgColorToast = Color(0xAA453e2d);
      textColor = Color(0xFF91740c);
      textColor1 = bgColorToast;
      textColor2 = Color(0xFF857d7d);
      textColorAyaNomue = Color(0xFF9d9090);
      textColorComplet = Color(0xFF2ca33c);

      btnColor = textColor;
      btnDownColor = Color(0xFFe3bc2f);
      btnTxtColor = bgColor1;

      cssbackgroundcolor = "#fef6e4";
      csscolor = "#453e2d";
      csscolorb = "#3f51b5";

      playerBgColor = Color(0xFFbaafa9);
      playerBgColor1 = textColorAyaNomue;
      playerBtnColor = bgColorToast;
      playerBtnColor1 = Color(0xFFf9efd8);
      playerTimeColor = textColor;
      playerTimeColor1 = bgColorToast;
    } else if (color == "g") {
      bgColor = Color(0xFFfefbcc);
      cssbackgroundcolor = "#fefbcc";
      bgColor1 = Color(0xFFfffbc6);
      bgColor2 = Color(0xFFf4f49d);
      bgColor3 = Color(0xFFdbf3bf);
      bgColorToast = Color(0xAA0d7107);
      textColor = Color(0xFF53ac00);
      textColor1 = Color(0xFF137e08);
      csscolor = "#137e08";
      textColor2 = Color(0xFF137e08);
      textColorAyaNomue = Color(0xFF62bf52);
      textColorComplet = Color(0xFF08cc0e);

      btnColor = Color(0xFF53ac00);
      btnDownColor = Color(0xFFcada09);
      btnTxtColor = bgColor1;

      csscolorb = "#3f51b5";

      playerBgColor = Color(0xFF89d371);
      playerBgColor1 = Color(0xFF62bf52);
      playerBtnColor = Color(0xFF137e08);
      playerBtnColor1 = Color(0xFFf4f7b8);
      playerTimeColor = Color(0xFF53ac00);
      playerTimeColor1 = Color(0xFF137e08);
    } else if (color == "g1") {
      bgColor = Color(0xFFfef9ec);
      cssbackgroundcolor = "#fef9ec";
      bgColor1 = Color(0xFFf7f4e3);
      bgColor2 = Color(0xFFf7f0d7);
      bgColor3 = Color(0xFFe5eee6);
      bgColorToast = Color(0xAA1e5145);
      textColor = Color(0xFF73921c);
      textColor1 = Color(0xFF285e4b);
      csscolor = "#285e4b";
      textColor2 = Color(0xFF669a9a);
      textColorAyaNomue = Color(0xFF81aaaa);
      textColorComplet = Color(0xFF15ba5b);

      btnColor = Color(0xFF73921c);
      btnDownColor = Color(0xFFd8cd4d);
      btnTxtColor = bgColor1;

      csscolorb = "#3f51b5";

      playerBgColor = Color(0xFFa4c3be);
      playerBgColor1 = Color(0xFF81aaaa);
      playerBtnColor = Color(0xFF285e4b);
      playerBtnColor1 = Color(0xFFf7f4e3);
      playerTimeColor = Color(0xFF73921c);
      playerTimeColor1 = Color(0xFF285e4b);
    } else if (color == "gb") {
      bgColor = Color(0xFFf1f1f1);
      bgColor1 = Color(0xFFe8e8e8);
      bgColor2 = Color(0xFFe0e0e0);
      bgColor3 = Color(0xFFe4e4e4);
      bgColorToast = Color(0xAA303030);
      textColor = Color(0xFF4e4e4e);
      textColor1 = bgColorToast;
      textColor2 = Color(0xFF818181);
      textColorAyaNomue = Color(0xFF969696);
      textColorComplet = Color(0xFF969696);

      btnColor = textColor;
      btnDownColor = Color(0xFF898989);
      btnTxtColor = bgColor1;

      cssbackgroundcolor = "#f1f1f1";
      csscolor = "#303030";
      csscolorb = "#7a7a7a";

      playerBgColor = Color(0xFF898989);
      playerBgColor1 = textColorAyaNomue;
      playerBtnColor = bgColorToast;
      playerBtnColor1 = Color(0xFFe8e8e8);
      playerTimeColor = textColor;
      playerTimeColor1 = bgColorToast;
    }
    switch (lang) {
      case "zh-CN":
        dir = TextDirection.ltr;
        textAlignEnd = TextAlign.start;
        fontFamily = 'ALKATIP';
        fontTopSize = 0;
        fontBootomSize = 3;
        break;
      case "tr-TR":
        dir = TextDirection.ltr;
        textAlignEnd = TextAlign.start;
        fontFamily = 'ALKATIP';
        fontTopSize = 0;
        fontBootomSize = 0;
        break;
      case "en-US":
        dir = TextDirection.ltr;
        textAlignEnd = TextAlign.start;
        fontFamily = 'ALKATIP';
        fontTopSize = 0;
        fontBootomSize = 0;
        break;
      case "ar-SA":
        dir = TextDirection.rtl;
        textAlignEnd = TextAlign.end;
        fontFamily = "Q";
        fontTopSize = 3;
        fontBootomSize = 0;
        break;
      default:
        dir = TextDirection.rtl;
        textAlignEnd = TextAlign.end;
        fontFamily = font;
        fontTopSize = 3;
        fontBootomSize = 0;
        break;
    }

    theme = ThemeData(
        fontFamily: fontFamily,
        textTheme: TextTheme(displayMedium: TextStyle(fontFamily: fontFamily)),
        primaryTextTheme:
            TextTheme(displayMedium: TextStyle(fontFamily: fontFamily)),
        brightness: Brightness.light,
        primaryColor: btnColor,
        dividerColor: Color(0xFFEFEFEF),
        scaffoldBackgroundColor: bgColor,
        dialogBackgroundColor: bgColor,
        appBarTheme: AppBarTheme(
          backgroundColor: bgColor,
        ));
    textStyle = TextStyle(fontFamily: fontFamily, color: textColor);

    textStyleToast = TextStyle(fontFamily: fontFamily, color: btnTxtColor);
    textStyleAyaNomue = TextStyle(
        fontFamily: fontFamily, color: textColorAyaNomue, fontSize: 12);
    textStyleUyghurAyaNomur =
        TextStyle(fontFamily: fontFamilyEn, color: textColor, fontSize: 10);
    textStyleUyghurAyaTarjiman =
        TextStyle(fontFamily: fontFamily, color: textColor, fontSize: 10);
    textStylePara =
        TextStyle(fontFamily: fontFamily, color: btnTxtColor, fontSize: 14);
    textStyleSuraNomue =
        textStyleAyaNomue.apply(fontFamily: fontFamilya, color: textColor);
    title1 = TextStyle(fontFamily: fontFamily, color: textColor1, fontSize: 14);
    title1Bold = TextStyle(
        fontFamily: fontFamily,
        color: textColor1,
        fontSize: 14,
        fontWeight: FontWeight.bold);
    title1a = title1.apply(fontFamily: fontFamilya, fontSizeDelta: 5);
    title2 = TextStyle(
        fontFamily: fontFamily,
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: 16);
    title2a = title2.apply(fontFamily: fontFamilya);
    title2en = TextStyle(
        fontFamily: fontFamilyEn,
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: 16);
    titleQ = TextStyle(
        fontFamily: fontFamily,
        color: textColor,
        fontSize: arabicFontSize,
        height: arabicFontHeightFactor);
    titleQa = titleQ.apply(fontFamily: fontFamilya);
    titleQaT = titleQa.apply(color: textColor1);
    titleQaR = titleQa.apply(color: red);
    title3 = TextStyle(
        fontFamily: fontFamily,
        color: textColor2,
        fontWeight: FontWeight.bold,
        fontSize: 18);
    title3a = title3.apply(fontFamily: fontFamilya);
    title4 = TextStyle(
        fontFamily: fontFamily,
        color: textColor1,
        fontSize: 16,
        fontWeight: FontWeight.bold);
    title4a = title4.apply(fontFamily: fontFamilya);

    title5 = TextStyle(
        fontFamily: fontFamily,
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: 20);
    title5a = title5.apply(fontFamily: fontFamilya);
    title6 = TextStyle(
        fontFamily: fontFamily,
        color: textColor1,
        fontSize: 18,
        fontWeight: FontWeight.bold);
    textHeight20 = TextStyle(
        fontFamily: fontFamily,
        color: textColor1,
        fontSize: uyghurFontSize,
        height: 2.0);
    textHeight20R = TextStyle(
      fontFamily: fontFamily,
      color: red,
      fontSize: uyghurFontSize,
      height: 2.0,
    );
    textStyleLang =
        TextStyle(fontFamily: fontFamily, color: textColor, fontSize: 36);
    textStyleLanga =
        TextStyle(fontFamily: fontFamilya, color: textColor, fontSize: 36);
    btnStyle = ButtonStyle(
        //背景颜色
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          //设置按下时的背景颜色
          if (states.contains(MaterialState.pressed)) {
            return btnColor;
          }
          //默认不使用背景颜色
          return btnColor;
        }),
        //设置水波纹颜色
        overlayColor: MaterialStateProperty.all(btnDownColor),
        //设置阴影  不适用于这里的TextButton
        // elevation: MaterialStateProperty.all(10),
        //设置边框
        // side:
        //     MaterialStateProperty.all(BorderSide(color: Colors.grey, width: 1)),
        //外边框装饰 会覆盖 side 配置的样式
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0))));

    btnStyleAya = ButtonStyle(
      //设置水波纹颜色
      overlayColor: MaterialStateProperty.all(bgColor),
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(0)),
    );

    btnText =
        TextStyle(fontFamily: fontFamily, fontSize: 20, color: btnTxtColor);
    btnText1 = TextStyle(fontFamily: fontFamily, fontSize: 14, color: btnColor);
    uFontPadding = EdgeInsets.fromLTRB(0, fontTopSize, 0, fontBootomSize);
  }
}
