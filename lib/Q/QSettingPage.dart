import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Q.dart';
import 'QASettingPage.dart';

class QSettingPage extends StatefulWidget {
  QSettingPage({Key key}) : super(key: key);

  @override
  State<QSettingPage> createState() => _QSettingPageState();
}

class _QSettingPageState extends State<QSettingPage> {
  final q = Get.put(Q());

  @override
  void initState() {
    super.initState();
    load();
  }

  load() async {}

  save() {
    q.setting.saveSettingBool("arabicText", q.arabicText.value);

    q.setting.saveSetting("arabicfontFamily", q.arabicfontFamily.value);
    q.setting.saveSetting("arabicTitle", q.arabicTitle.value);

    q.setting.saveSetting("uyghurfontFamily", q.uyghurfontFamily.value);
    q.setting.saveSetting("uyghurTitle", q.uyghurTitle.value);

    q.setting.saveSetting("color", q.color.value);

    q.setting.saveSettingInt("arabicFontSize", q.arabicFontSize.value);
    q.setting.saveSettingInt("uyghurFontSize", q.uyghurFontSize.value);

    q.setting.saveSettingBool("muahhmadsalih", q.muahhmadsalih.value);
    q.setting.saveSettingBool("hayattarjimisi", q.hayattarjimisi.value);
    q.setting.saveSettingBool("aalimTarjimiai", q.aalimTarjimiai.value);
    q.setting.saveSettingBool(
        "yusupmuhahmadtarjimisi", q.yusupmuhahmadtarjimisi.value);

    q.setting.saveSettingBool("showTarjimaHanyu", q.showTarjimaHanyu.value);
    q.setting.saveSettingBool("showTarjimaEnglish", q.showTarjimaEnglish.value);
    q.setting.saveSettingBool("showTarjimaTurky", q.showTarjimaTurky.value);
    q.setLang(q.lang.value);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: q.theme.theme,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            reverse: false,
            padding: EdgeInsets.all(0.0),
            physics: BouncingScrollPhysics(),
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
                            q.resources.tangxak,
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
                          Icons.language,
                          q.resources.language,
                          (Obx(() => Text(q.langTitle.value.toString(),
                              style: q.theme.title2))), () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                contentPadding: const EdgeInsets.fromLTRB(
                                    0.0, 20.0, 10.0, 24.0),
                                title: Center(
                                    child: Text(q.resources.language,
                                        style: q.theme.title2)),
                                content: Container(
                                    // height: 280,
                                    child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  reverse: false,
                                  padding: EdgeInsets.all(0.0),
                                  physics: BouncingScrollPhysics(),
                                  child: Column(
                                      children: q.langList
                                          .map((item) => Container(
                                                child: itemLang(item["title"],
                                                    item["lang"]),
                                              ))
                                          .toList()),
                                )),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    child: Text(
                                      q.resources.kaytix,
                                      style: q.theme.textStyle,
                                    ),
                                  ),
                                ],
                                actionsAlignment: MainAxisAlignment.center,
                              );
                            }).then((value) {
                          print(value);
                          if (value != null) {
                            q.setLang(value);
                            setState(() {});
                          }
                        });
                      }),
                      sizik(),
                      item(
                          Icons.font_download,
                          q.resources.arapqisinikorsitamdu,
                          (Obx(
                            () => CustomAnimatedToggleSwitch<bool>(
                              current: q.arabicText.value,
                              values: [false, true],
                              dif: 0.0,
                              indicatorSize: Size.square(30.0),
                              animationDuration:
                                  const Duration(milliseconds: 200),
                              animationCurve: Curves.linear,
                              onChanged: (b) {
                                q.arabicText.value = b;
                                q.updateShowTarjimaSani();
                                save();
                              },
                              iconBuilder: (context, local, global) {
                                return const SizedBox();
                              },
                              defaultCursor: SystemMouseCursors.click,
                              onTap: () {
                                q.arabicText.value = !q.arabicText.value;
                                q.updateShowTarjimaSani();
                                save();
                              },
                              iconsTappable: false,
                              wrapperBuilder: wrapperBuilder,
                              foregroundIndicatorBuilder:
                                  foregroundIndicatorBuilder,
                            ),
                          )),
                          () {}),
                      sizik(),
                      item(
                          Icons.translate,
                          q.resources.kortisitiganTillar,
                          (Obx(() => Text(
                              q.showTarjimaSani.value.toString() +
                                  q.resources.hilTarjima,
                              textDirection: q.theme.dir,
                              style: q.theme.title2))), () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                contentPadding: const EdgeInsets.fromLTRB(
                                    10.0, 20.0, 10.0, 24.0),
                                title: Center(
                                    child: Text(q.resources.kortisitiganTillar,
                                        style: q.theme.title2)),
                                content: Container(
                                    height: 300,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          itemCheck(
                                              q.resources.muahhmadsalih,
                                              (Obx(
                                                () =>
                                                    CustomAnimatedToggleSwitch<
                                                        bool>(
                                                  current:
                                                      q.muahhmadsalih.value,
                                                  values: [false, true],
                                                  dif: 0.0,
                                                  indicatorSize:
                                                      Size.square(30.0),
                                                  animationDuration:
                                                      const Duration(
                                                          milliseconds: 200),
                                                  animationCurve: Curves.linear,
                                                  onChanged: (b) {
                                                    q.muahhmadsalih.value = b;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconBuilder:
                                                      (context, local, global) {
                                                    return const SizedBox();
                                                  },
                                                  defaultCursor:
                                                      SystemMouseCursors.click,
                                                  onTap: () {
                                                    q.muahhmadsalih.value =
                                                        !q.muahhmadsalih.value;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconsTappable: false,
                                                  wrapperBuilder:
                                                      wrapperBuilder,
                                                  foregroundIndicatorBuilder:
                                                      foregroundIndicatorBuilder,
                                                ),
                                              ))),
                                          sizik1(),
                                          itemCheck(
                                              q.resources.hayattarjimisi,
                                              (Obx(
                                                () =>
                                                    CustomAnimatedToggleSwitch<
                                                        bool>(
                                                  current:
                                                      q.hayattarjimisi.value,
                                                  values: [false, true],
                                                  dif: 0.0,
                                                  indicatorSize:
                                                      Size.square(30.0),
                                                  animationDuration:
                                                      const Duration(
                                                          milliseconds: 200),
                                                  animationCurve: Curves.linear,
                                                  onChanged: (b) {
                                                    q.hayattarjimisi.value = b;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconBuilder:
                                                      (context, local, global) {
                                                    return const SizedBox();
                                                  },
                                                  defaultCursor:
                                                      SystemMouseCursors.click,
                                                  onTap: () {
                                                    q.hayattarjimisi.value =
                                                        !q.hayattarjimisi.value;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconsTappable: false,
                                                  wrapperBuilder:
                                                      wrapperBuilder,
                                                  foregroundIndicatorBuilder:
                                                      foregroundIndicatorBuilder,
                                                ),
                                              ))),
                                          sizik1(),
                                          itemCheck(
                                              q.resources.aalimTarjimiai,
                                              (Obx(
                                                () =>
                                                    CustomAnimatedToggleSwitch<
                                                        bool>(
                                                  current:
                                                      q.aalimTarjimiai.value,
                                                  values: [false, true],
                                                  dif: 0.0,
                                                  indicatorSize:
                                                      Size.square(30.0),
                                                  animationDuration:
                                                      const Duration(
                                                          milliseconds: 200),
                                                  animationCurve: Curves.linear,
                                                  onChanged: (b) {
                                                    q.aalimTarjimiai.value = b;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconBuilder:
                                                      (context, local, global) {
                                                    return const SizedBox();
                                                  },
                                                  defaultCursor:
                                                      SystemMouseCursors.click,
                                                  onTap: () {
                                                    q.aalimTarjimiai.value =
                                                        !q.aalimTarjimiai.value;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconsTappable: false,
                                                  wrapperBuilder:
                                                      wrapperBuilder,
                                                  foregroundIndicatorBuilder:
                                                      foregroundIndicatorBuilder,
                                                ),
                                              ))),
                                          sizik1(),
                                          itemCheck(
                                              q.resources
                                                  .yusupmuhahmadtarjimisi,
                                              (Obx(
                                                () =>
                                                    CustomAnimatedToggleSwitch<
                                                        bool>(
                                                  current: q
                                                      .yusupmuhahmadtarjimisi
                                                      .value,
                                                  values: [false, true],
                                                  dif: 0.0,
                                                  indicatorSize:
                                                      Size.square(30.0),
                                                  animationDuration:
                                                      const Duration(
                                                          milliseconds: 200),
                                                  animationCurve: Curves.linear,
                                                  onChanged: (b) {
                                                    q.yusupmuhahmadtarjimisi
                                                        .value = b;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconBuilder:
                                                      (context, local, global) {
                                                    return const SizedBox();
                                                  },
                                                  defaultCursor:
                                                      SystemMouseCursors.click,
                                                  onTap: () {
                                                    q.yusupmuhahmadtarjimisi
                                                            .value =
                                                        !q.yusupmuhahmadtarjimisi
                                                            .value;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconsTappable: false,
                                                  wrapperBuilder:
                                                      wrapperBuilder,
                                                  foregroundIndicatorBuilder:
                                                      foregroundIndicatorBuilder,
                                                ),
                                              ))),
                                          sizik1(),
                                          itemCheck(
                                              q.resources.showTarjimaHanyu,
                                              (Obx(
                                                () =>
                                                    CustomAnimatedToggleSwitch<
                                                        bool>(
                                                  current:
                                                      q.showTarjimaHanyu.value,
                                                  values: [false, true],
                                                  dif: 0.0,
                                                  indicatorSize:
                                                      Size.square(30.0),
                                                  animationDuration:
                                                      const Duration(
                                                          milliseconds: 200),
                                                  animationCurve: Curves.linear,
                                                  onChanged: (b) {
                                                    q.showTarjimaHanyu.value =
                                                        b;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconBuilder:
                                                      (context, local, global) {
                                                    return const SizedBox();
                                                  },
                                                  defaultCursor:
                                                      SystemMouseCursors.click,
                                                  onTap: () {
                                                    q.showTarjimaHanyu.value =
                                                        !q.showTarjimaHanyu
                                                            .value;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconsTappable: false,
                                                  wrapperBuilder:
                                                      wrapperBuilder,
                                                  foregroundIndicatorBuilder:
                                                      foregroundIndicatorBuilder,
                                                ),
                                              ))),
                                          sizik1(),
                                          itemCheck(
                                              q.resources.showTarjimaEnglish,
                                              (Obx(
                                                () =>
                                                    CustomAnimatedToggleSwitch<
                                                        bool>(
                                                  current: q
                                                      .showTarjimaEnglish.value,
                                                  values: [false, true],
                                                  dif: 0.0,
                                                  indicatorSize:
                                                      Size.square(30.0),
                                                  animationDuration:
                                                      const Duration(
                                                          milliseconds: 200),
                                                  animationCurve: Curves.linear,
                                                  onChanged: (b) {
                                                    q.showTarjimaEnglish.value =
                                                        b;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconBuilder:
                                                      (context, local, global) {
                                                    return const SizedBox();
                                                  },
                                                  defaultCursor:
                                                      SystemMouseCursors.click,
                                                  onTap: () {
                                                    q.showTarjimaEnglish.value =
                                                        !q.showTarjimaEnglish
                                                            .value;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconsTappable: false,
                                                  wrapperBuilder:
                                                      wrapperBuilder,
                                                  foregroundIndicatorBuilder:
                                                      foregroundIndicatorBuilder,
                                                ),
                                              ))),
                                          sizik1(),
                                          itemCheck(
                                              q.resources.showTarjimaTurky,
                                              (Obx(
                                                () =>
                                                    CustomAnimatedToggleSwitch<
                                                        bool>(
                                                  current:
                                                      q.showTarjimaTurky.value,
                                                  values: [false, true],
                                                  dif: 0.0,
                                                  indicatorSize:
                                                      Size.square(30.0),
                                                  animationDuration:
                                                      const Duration(
                                                          milliseconds: 200),
                                                  animationCurve: Curves.linear,
                                                  onChanged: (b) {
                                                    q.showTarjimaTurky.value =
                                                        b;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconBuilder:
                                                      (context, local, global) {
                                                    return const SizedBox();
                                                  },
                                                  defaultCursor:
                                                      SystemMouseCursors.click,
                                                  onTap: () {
                                                    q.showTarjimaTurky.value =
                                                        !q.showTarjimaTurky
                                                            .value;
                                                    q.updateShowTarjimaSani();
                                                    save();
                                                  },
                                                  iconsTappable: false,
                                                  wrapperBuilder:
                                                      wrapperBuilder,
                                                  foregroundIndicatorBuilder:
                                                      foregroundIndicatorBuilder,
                                                ),
                                              ))),
                                        ],
                                      ),
                                    )),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
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
                          Icons.font_download_outlined,
                          q.resources.hatnurshisi,
                          (Obx(() => Text(q.uyghurTitle.value,
                              textDirection: TextDirection.ltr,
                              style: q.theme.title2))), () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                contentPadding: const EdgeInsets.fromLTRB(
                                    0.0, 20.0, 10.0, 24.0),
                                title: Center(
                                    child: Text(q.resources.hatnurshisi,
                                        style: q.theme.title2)),
                                content: Container(
                                    height: 280,
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
                                          children: q.fontListUyghur
                                              .map((item) => Container(
                                                    child: itemFontUyghur(
                                                        item["title"],
                                                        item["fontFamily"]),
                                                  ))
                                              .toList()),
                                    )),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
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
                      sizik(),
                      item(
                          Icons.font_download_outlined,
                          q.resources.arabikHatnurshisi,
                          (Obx(() => Text(q.arabicTitle.value,
                              textDirection: TextDirection.ltr,
                              style: q.theme.title2))), () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                contentPadding: const EdgeInsets.fromLTRB(
                                    0.0, 20.0, 10.0, 24.0),
                                title: Center(
                                    child: Text(q.resources.arabikHatnurshisi,
                                        style: q.theme.title2)),
                                content: Container(
                                    height: 280,
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
                                          children: q.fontList
                                              .map((item) => Container(
                                                    child: itemFont(
                                                        item["title"],
                                                        item["fontFamily"]),
                                                  ))
                                              .toList()),
                                    )),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
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
                      sizik(),
                      item(
                          Icons.text_fields,
                          q.resources.hatqongliki,
                          Obx(() => Text(
                                (q.arabicFontSize.value.toInt()).toString(),
                                style: q.theme.title2,
                              )), () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                contentPadding: const EdgeInsets.fromLTRB(
                                    0.0, 20.0, 10.0, 24.0),
                                title: Center(
                                    child: Text(q.resources.hatqongliki,
                                        style: q.theme.title2)),
                                content: Container(
                                    height: 280,
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
                                        16,
                                        18,
                                        20,
                                        22,
                                        24,
                                        26,
                                        27,
                                        28,
                                        30,
                                        32,
                                        34,
                                        36,
                                        38,
                                        40,
                                        42,
                                        44,
                                        46
                                      ]
                                              .map((item) => Container(
                                                    child: itemFontSize(item),
                                                  ))
                                              .toList()),
                                    )),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
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
                      sizik(),
                      item(
                          Icons.text_fields,
                          q.resources.hatqonglikiUyghur,
                          Obx(() => Text(
                                (q.uyghurFontSize.value.toInt()).toString(),
                                style: q.theme.title2,
                              )), () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                contentPadding: const EdgeInsets.fromLTRB(
                                    0.0, 20.0, 10.0, 24.0),
                                title: Center(
                                    child: Text(q.resources.hatqonglikiUyghur,
                                        style: q.theme.title2)),
                                content: Container(
                                    height: 280,
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
                                        12,
                                        14,
                                        16,
                                        18,
                                        20,
                                        22,
                                        24,
                                        26,
                                        27,
                                        28,
                                        30,
                                        32,
                                        34,
                                        36,
                                        38,
                                        40,
                                        42,
                                        44,
                                        46
                                      ]
                                              .map((item) => Container(
                                                    child: itemFontSizeUyghur(
                                                        item),
                                                  ))
                                              .toList()),
                                    )),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
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
                      sizik(),
                      item(
                          Icons.volume_up,
                          q.resources.kiraat,
                          Obx(() => Text(
                              q.qraatName.value != ""
                                  ? q.qraatName.value
                                  : q.resources.tallang,
                              style: q.theme.title2)), () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new QASettingPage()),
                        );
                      }),
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
                          Icons.color_lens_rounded,
                          q.resources.rang,
                          q.color.value == ""
                              ? Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFfef6e4),
                                    border: new Border.all(
                                        width: 5, color: q.theme.bgColor3),
                                  ),
                                )
                              : q.color.value == "g"
                                  ? Container(
                                      height: 40,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 27, 232, 38),
                                        border: new Border.all(
                                            width: 5, color: q.theme.bgColor3),
                                      ),
                                    )
                                  : q.color.value == "gb"
                                      ? Container(
                                          height: 40,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF4e4e4e),
                                            border: new Border.all(
                                                width: 5,
                                                color: q.theme.bgColor3),
                                          ),
                                        )
                                      : Container(
                                          height: 40,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 27, 232, 133),
                                            border: new Border.all(
                                                width: 5,
                                                color: q.theme.bgColor3),
                                          ),
                                        ), () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                contentPadding: const EdgeInsets.fromLTRB(
                                    10.0, 20.0, 10.0, 24.0),
                                title: Center(
                                    child: Text(q.resources.language,
                                        style: q.theme.title2)),
                                content: Container(
                                    // height: 280,
                                    child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  reverse: false,
                                  padding: EdgeInsets.all(0.0),
                                  physics: BouncingScrollPhysics(),
                                  child: Column(children: [
                                    TextButton(
                                      onPressed: () {
                                        q.color.value = "";
                                        q.setLang(q.lang.value);
                                        setState(() {});
                                        save();
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFfef6e4),
                                          border: new Border.all(
                                              width: 5,
                                              color: q.theme.bgColor3),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          q.color.value = "g";
                                          q.setLang(q.lang.value);
                                          setState(() {});
                                          save();
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(
                                          height: 40,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 27, 232, 38),
                                            border: new Border.all(
                                                width: 5,
                                                color: q.theme.bgColor3),
                                          ),
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          q.color.value = "g1";
                                          q.setLang(q.lang.value);
                                          setState(() {});
                                          save();
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(
                                          height: 40,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 27, 232, 133),
                                            border: new Border.all(
                                                width: 5,
                                                color: q.theme.bgColor3),
                                          ),
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          q.color.value = "gb";
                                          q.setLang(q.lang.value);
                                          setState(() {});
                                          save();
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(
                                          height: 40,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF4e4e4e),
                                            border: new Border.all(
                                                width: 5,
                                                color: q.theme.bgColor3),
                                          ),
                                        ))
                                  ]),
                                )),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    child: Text(
                                      q.resources.kaytix,
                                      style: q.theme.textStyle,
                                    ),
                                  ),
                                ],
                                actionsAlignment: MainAxisAlignment.center,
                              );
                            }).then((value) {
                          setState(() {});
                        });
                      }),
                    ],
                  ),
                ),
              ],
            ),
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

  itemCheck(String title, Widget check) {
    return Container(
      height: 40,
      width: double.infinity,
      child: Row(
        textDirection: q.theme.dir,
        children: [
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
          Container(
            height: 35,
            width: 80,
            // color: Colors.red,
            child: check,
          ),
        ],
      ),
    );
  }

  Widget wrapperBuilder(
      BuildContext conext, GlobalToggleProperties<bool> local, Widget child) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            left: 10.0,
            right: 10.0,
            height: 20.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color.lerp(
                    q.theme.bgColor, q.theme.bgColor1, local.position),
                borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              ),
            )),
        child,
      ],
    );
  }

  Widget foregroundIndicatorBuilder(
      BuildContext context, DetailedGlobalToggleProperties<bool> global) {
    return SizedBox.fromSize(
      size: global.indicatorSize,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color.lerp(Colors.white, q.theme.textColor, global.position),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          boxShadow: const [
            BoxShadow(
                color: Colors.black38,
                spreadRadius: 0.05,
                blurRadius: 1.1,
                offset: Offset(0.0, 0.8))
          ],
        ),
      ),
    );
  }

  itemFont(String title, String fontFamily) {
    return (Obx(() => ListTile(
          onTap: () {
            q.fontList.forEach((element) {
              if (element["fontFamily"] == fontFamily) {
                q.arabicfontFamily.value = element["fontFamily"];

                q.arabicTitle.value = element["title"];
                save();
              }
            });
          },
          title: Container(
            decoration: q.arabicfontFamily.value == fontFamily
                ? BoxDecoration(
                    border: Border.all(
                      color: q.theme.btnColor,
                      width: 3,
                    ),
                  )
                : BoxDecoration(),
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  q.resources.bismillaah,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: fontFamily,
                      fontSize: 24,
                      color: q.theme.textColor),
                ),
                Container(
                  height: 5,
                ),
                Text(title, style: q.theme.textStyleAyaNomue)
              ],
            ),
          ),
        )));
  }

  itemFontUyghur(String title, String fontFamily) {
    return (Obx(() => ListTile(
          onTap: () {
            q.fontListUyghur.forEach((element) {
              if (element["fontFamily"] == fontFamily) {
                q.uyghurfontFamily.value = element["fontFamily"];
                q.uyghurTitle.value = element["title"];
                save();
              }
            });
          },
          title: Container(
            decoration: q.uyghurfontFamily.value == fontFamily
                ? BoxDecoration(
                    border: Border.all(
                      color: q.theme.btnColor,
                      width: 3,
                    ),
                  )
                : BoxDecoration(),
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  q.resources.marhaba,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: fontFamily,
                      fontSize: 24,
                      color: q.theme.textColor),
                ),
                Container(
                  height: 5,
                ),
                Text(title, style: q.theme.textStyleAyaNomue)
              ],
            ),
          ),
        )));
  }

  itemFontSize(int fontSize) {
    return (Obx(() => ListTile(
          onTap: () {
            q.arabicFontSize.value = fontSize;
            save();
          },
          title: Container(
            decoration: q.arabicFontSize.value == fontSize
                ? BoxDecoration(
                    border: Border.all(
                      color: q.theme.btnColor,
                      width: 3,
                    ),
                  )
                : BoxDecoration(),
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  q.resources.bismillaah,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: q.arabicfontFamily.value,
                      fontSize: fontSize.toDouble(),
                      color: q.theme.textColor),
                ),
                Container(
                  height: 5,
                ),
                Text((fontSize.toInt()).toString(),
                    style: q.theme.textStyleAyaNomue)
              ],
            ),
          ),
        )));
  }

  itemFontSizeUyghur(int fontSize) {
    return (Obx(() => ListTile(
          onTap: () {
            q.uyghurFontSize.value = fontSize;
            save();
          },
          title: Container(
            decoration: q.uyghurFontSize.value == fontSize
                ? BoxDecoration(
                    border: Border.all(
                      color: q.theme.btnColor,
                      width: 3,
                    ),
                  )
                : BoxDecoration(),
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  q.resources.assalam,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: q.theme.fontFamily,
                      fontSize: fontSize.toDouble(),
                      color: q.theme.textColor),
                ),
                Container(
                  height: 5,
                ),
                Text((fontSize.toInt()).toString(),
                    style: q.theme.textStyleAyaNomue)
              ],
            ),
          ),
        )));
  }

  itemLang(String title, String lang) {
    return (Obx(() => ListTile(
          onTap: () {
            q.lang.value = lang;
            q.langTitle.value = title;
            navigator.pop(lang);
          },
          title: Container(
            height: 40,
            alignment: Alignment.center,
            decoration: q.lang.value == lang
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
