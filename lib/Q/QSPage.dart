import 'dart:async';
import 'dart:math';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'QASettingPage.dart';
import 'QPlayInfo.dart';
import 'QAServer.dart';
import 'package:styled_text/styled_text.dart';
import 'Q.dart';
import 'QSettingPage.dart';
import 'QTapPage.dart';

class QSPage extends StatefulWidget {
  QSPage(this.sid, {Key key, this.aya = 1, this.isOnePlay = true})
      : super(key: key);
  final int sid;
  final int aya;
  final bool isOnePlay;
  @override
  State<QSPage> createState() => _QSPageState();
}

class _QSPageState extends State<QSPage> {
  final q = Get.put(Q());
  final p = Get.put(QPlayInfo());
  final sccontroller = ScrollController();

  String suraTitle = "";
  String suraTitleUyghur = "";
  String suraInfo = "";
  List<Map> sura = [];
  List<int> ayaList = [];
  bool isShowSuraInfo = false;
  int showTarjimaSaniChangeCount = 0;
  String favSuraName = "";
  QAServer qAServer;
  List<int> paraAya = [0];
  List<int> paraNumber = [0];
  bool inPra = false;
  bool isOnePlay = true;

  final GlobalKey bismillaKey = GlobalKey();
  final GlobalKey paraBtnKey = GlobalKey();
  @override
  void initState() {
    if (widget.aya != 0) {
      inPra = true;
    }
    isOnePlay = widget.isOnePlay;
    load();
    super.initState();
    //等待5秒后
    Future.delayed(Duration(seconds: 5), () {
      inPra = false;
    });
  }

  next() {
    // widget.sid+=1;
    Navigator.pop(context, "next");
  }

  load() async {
    showTarjimaSaniChangeCount = q.showTarjimaSaniChangeCount.value;

    String sql = 'select aya,text,page_no,juz_no';
    if (q.muahhmadsalih.value) sql += ',ug_text';
    if (q.yusupmuhahmadtarjimisi.value) sql += ',myusuf_text';
    if (q.hayattarjimisi.value) sql += ',heyet_text';
    if (q.aalimTarjimiai.value) sql += ',eaoglu_text';
    if (q.showTarjimaHanyu.value) sql += ',ch_text';
    if (q.showTarjimaEnglish.value) sql += ',en_text';
    if (q.showTarjimaTurky.value) sql += ',tr_text';
    if (widget.sid == -1)
      sql +=
          ',sura as suraNumber,(select n from q_sura where id=sura) as suraName';
    sql += ' from a_Q_text where ';
    List<Map> r = [];
    await q.fav.init();
    if (widget.sid == -1) {
      if (q.fav.qFav.length == 0) {
      } else {
        q.fav.qFav.forEach((element) {
          double surad = (element / 1000);
          int sura = surad.toInt();
          int aya = element - sura * 1000;
          sql += '(aya=$aya and sura=$sura) or ';
        });
        sql = sql.substring(0, sql.length - 4);
        r = await q.sql.select(sql);
      }
    } else {
      List<Map> sr = await q.sql
          .select('select n,un,info from q_sura where id=${widget.sid}');
      suraTitle = sr[0]["n"];
      suraTitleUyghur = sr[0]["un"];
      suraInfo = sr[0]["info"];
      sql += 'sura=${widget.sid}';
      r = await q.sql.select(sql);
    }

    sura.clear();
    ayaList.clear();
    for (int i = 0; i < r.length; i++) {
      var element = r[i];
      String ugtext = q.muahhmadsalih.value ? element["ug_text"] : "";
      String myusuftext =
          q.yusupmuhahmadtarjimisi.value ? element["myusuf_text"] : "";
      String heyettext = q.hayattarjimisi.value ? element["heyet_text"] : "";
      String eaoglutext = q.aalimTarjimiai.value ? element["eaoglu_text"] : "";
      String chtext = q.showTarjimaHanyu.value ? element["ch_text"] : "";
      String entext = q.showTarjimaEnglish.value ? element["en_text"] : "";
      String trtext = q.showTarjimaTurky.value ? element["tr_text"] : "";
      String suraName = widget.sid == -1
          ? element["suraNumber"].toString() + ". " + element["suraName"]
          : "";
      int sid = widget.sid == -1 ? element["suraNumber"] : widget.sid;

      bool fav =
          widget.sid == -1 ? true : q.fav.isQFav(widget.sid, element["aya"]);

      String text = element["text"];

      if (element["aya"] == 1 && (sid != 1 && sid != 9)) {
        text = text.replaceAll(q.resources.bismillaah, "");
      }
      String snumber = "";
      if (widget.sid == -1) {
        snumber += ' ﴿$suraName [${element["aya"]}]﴾';
      } else {
        snumber += ' ﴿${element["aya"]}﴾';
      }

      sura.add({
        "isCheck": false,
        "isSelect": false,
        "suraName": suraName,
        "sid": sid,
        "aya": element["aya"],
        "page_no": element["page_no"],
        "juz_no": element["juz_no"],
        "text": text,
        "snumber": snumber,
        "ug_text": ugtext,
        "ch_text": chtext,
        "en_text": entext,
        "tr_text": trtext,
        "heyet_text": heyettext,
        "eaoglu_text": eaoglutext,
        "myusuf_text": myusuftext,
        "fav": fav,
        "key": GlobalKey()
      });
      ayaList.add(i + 1);
    }
    if (sura.length > 0) {
      sura[widget.aya - 1]["isCheck"] = true;
    }
    qAServer = QAServer();
    qAServer.initQ(q);

    p.isShowStatusbar.value = false;
    p.isShowPlayer.value = false;
    setBottomHeight();
    if (widget.sid != -1) {
      for (int i = 0; i < q.para.length; i++) {
        if (q.para[i][1] == widget.sid) {
          paraAya.add(q.para[i][2]);
          paraNumber.add(i + 1);
        }
      }
      _startTimer();
    }
    setState(() {});
    if (widget.aya > 1) {
      gotoAyaWeit(widget.aya - 1);
    }
  }

  gotoAyaWeit(int i) {
    if (sccontroller == null) {
      Future.delayed(Duration(seconds: 1), () {
        gotoAyaWeit(i);
      });
    } else {
      if (sccontroller.position.maxScrollExtent == 0) {
        Future.delayed(Duration(seconds: 1), () {
          gotoAyaWeit(i);
        });
      } else {
        gotoAya(i);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    aldinkiUyghurText = "";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: q.theme.theme,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: q.theme.btnColor,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.settings,
                        color: q.theme.btnColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new QSettingPage()),
                        ).then((value) {
                          // if (showTarjimaSaniChangeCount !=
                          //     q.showTarjimaSaniChangeCount.value) {

                          load();
                          // }
                          setState(() {});
                        });
                      },
                    )
                  ],
                ),
              ),
              widget.sid == -1
                  ? Container()
                  : Container(
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            child: Row(
                                textDirection: q.theme.dir,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 100,
                                    alignment: Alignment.center,
                                    child: Text(
                                        '${widget.sid} . ${q.resources.sura}',
                                        textDirection: q.theme.dir,
                                        style: q.theme.textStyleAyaNomue),
                                  ),
                                  Expanded(
                                      child: Container(
                                    child: Center(
                                        child: Text(
                                      '﴿ $suraTitle ﴾',
                                      textDirection: TextDirection.rtl,
                                      style: q.theme.title5a,
                                    )),
                                  )),
                                  Container(
                                    width: 100,
                                    alignment: Alignment.center,
                                    child: TextButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                contentPadding:
                                                    const EdgeInsets.fromLTRB(
                                                        0.0, 20.0, 10.0, 24.0),
                                                title: Center(
                                                    child: Text(
                                                        q.resources
                                                            .ayatkatizberix,
                                                        style: q.theme.title2)),
                                                content: Container(
                                                    // height: 280,
                                                    child:
                                                        SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  reverse: false,
                                                  padding: EdgeInsets.all(0.0),
                                                  physics:
                                                      BouncingScrollPhysics(),
                                                  child: Wrap(
                                                      textDirection:
                                                          TextDirection.ltr,
                                                      alignment:
                                                          WrapAlignment.center,
                                                      children: ayaList
                                                          .map((item) =>
                                                              Container(
                                                                color: q.theme
                                                                    .bgColor,
                                                                height: 40,
                                                                width: 40,
                                                                margin:
                                                                    EdgeInsets
                                                                        .all(
                                                                            10),
                                                                child:
                                                                    TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.pop(
                                                                        context,
                                                                        item -
                                                                            1);
                                                                  },
                                                                  child: Text(
                                                                    item.toString(),
                                                                    style: q
                                                                        .theme
                                                                        .textStyle,
                                                                  ),
                                                                ),
                                                              ))
                                                          .toList()),
                                                )),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .pop(),
                                                    child: Text(
                                                      q.resources.kaytix,
                                                      style: q.theme.textStyle,
                                                    ),
                                                  ),
                                                ],
                                                actionsAlignment:
                                                    MainAxisAlignment.center,
                                              );
                                            }).then((value) {
                                          if (value != null) {
                                            gotoAya(value);
                                          }
                                        });
                                      },
                                      child: Text(
                                          '${sura.length} ${q.resources.ayat}',
                                          textDirection: q.theme.dir,
                                          style: q.theme.textStyleAyaNomue),
                                    ),
                                  ),
                                ]),
                          ),
                          isShowSuraInfo
                              ? Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 1,
                                        margin: EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        color: q.theme.bgColor1,
                                      ),
                                      StyledText(
                                        text: '<b>' +
                                            suraTitleUyghur +
                                            ":</b>" +
                                            suraInfo,
                                        textAlign: TextAlign.justify,
                                        tags: {
                                          'b': StyledTextTag(
                                            style: q.theme.textHeight20R,
                                          )
                                        },
                                        style: q.theme.textHeight20
                                            .apply(fontSizeDelta: 2),
                                        textDirection: TextDirection.rtl,
                                      ),
                                    ],
                                  ),
                                )
                              : Container(),
                          Container(
                            height: 30,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isShowSuraInfo = !isShowSuraInfo;
                                  });
                                },
                                icon: Icon(
                                  isShowSuraInfo
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  color: q.theme.textColor1,
                                )),
                          ),
                        ],
                      ),
                    ),
              Expanded(
                  child: Container(
                alignment: Alignment.topCenter,
                child: Row(
                  textDirection: q.theme.dir,
                  children: [
                    Expanded(
                      child: Container(
                        color: q.theme.bgColor1,
                        child: SingleChildScrollView(
                            controller: sccontroller,
                            scrollDirection: Axis.vertical,
                            reverse: false,
                            padding: EdgeInsets.all(0.0),
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                widget.sid == -1
                                    ? Container(
                                        // height: 50,
                                        margin: EdgeInsets.all(10),
                                        width: double.infinity,
                                        child: Column(
                                          children: [
                                            Text(
                                              q.resources.sakliwalganlar,
                                              textDirection: TextDirection.rtl,
                                              textAlign: TextAlign.center,
                                              style: q.theme.title3,
                                            ),
                                            q.fav.qFav.length != 0
                                                ? Container()
                                                : Container(
                                                    child:
                                                        Text(q.resources.yok),
                                                  )
                                          ],
                                        ),
                                      )
                                    : widget.sid == 1 || widget.sid == 9
                                        ? Container()
                                        : Container(
                                            key: bismillaKey,
                                            // height: 50,
                                            margin: EdgeInsets.all(10),
                                            width: double.infinity,
                                            child: Text(
                                              q.resources.bismillaah,
                                              textDirection: TextDirection.rtl,
                                              textAlign: TextAlign.center,
                                              style: q.theme.titleQa,
                                            ),
                                          ),
                                Column(
                                    children: sura
                                        .map((item) => Container(
                                              child: ayaW(item),
                                            ))
                                        .toList()),
                                widget.sid != 114 && widget.sid != -1
                                    ? TextButton(
                                        key: paraBtnKey,
                                        onPressed: () {
                                          next();
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 40,
                                          alignment: Alignment.center,
                                          color: q.theme.btnColor,
                                          child: Text(
                                            q.resources.keyinkiSura,
                                            textDirection: q.theme.dir,
                                            style: q.theme.textStylePara,
                                          ),
                                        ),
                                      )
                                    : Container()
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.transparent,
          // decoration: BoxDecoration(
          //   color: q.theme.textColor1,
          // ),
          child: SafeArea(
            child: Container(
              height: p.bottomHeight.value,
              child: Column(
                children: [
                  Visibility(
                    visible: p.isShowPlayer.value,
                    child: assetsAudioPlayer.builderRealtimePlayingInfos(
                        builder: (context, RealtimePlayingInfos infos) {
                      if (infos.current != null) {
                        _currentPosition = infos.currentPosition;
                        // currentIndex = infos.current.index;
                        fi = infos.current.index;
                        // setDuration();
                        // FileName f = playList[infos.current.index];
                        // if (fi != f.i) {
                        //   fn = f;
                        // fi = f.i;
                        //   playTitle = f.n;
                        // }
                      }
                      if (infos == null) {
                        return SizedBox();
                      }
                      // if (this.selStatr != null && this.selEnd != null) {
                      //   if (this.selStatr != Duration.zero &&
                      //       this.selEnd != Duration.zero) {
                      //     // print("ok");
                      //     if (_currentPosition > this.selEnd) {
                      //       // print("gobak");
                      //       assetsAudioPlayer.pause();
                      //       assetsAudioPlayer.seek(this.selStatr);
                      //       assetsAudioPlayer.play();
                      //     }
                      //   }
                      // }
                      return player(infos);
                    }),
                  ),
                  Visibility(
                    visible: p.isShowStatusbar.value,
                    child: Row(
                      children: [
                        Container(
                          child: IconButton(
                            onPressed: () {
                              p.isShowStatusbar.value = false;
                              setBottomHeight();
                              setState(() {
                                isMultiSelect = !isMultiSelect;
                              });
                            },
                            icon: Icon(Icons.check_circle_outline,
                                color: isMultiSelect
                                    ? Colors.yellow
                                    : Colors.white),
                          ),
                        ),
                        Visibility(
                            visible: isMultiSelect,
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    // multiSelectIds.clear();
                                    sura.forEach((element) {
                                      // multiSelectIds.add(element["aya"]);
                                      element["isSelect"] = true;
                                    });
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.check_box,
                                      color: Colors.white),
                                ),
                                IconButton(
                                  onPressed: () {
                                    // multiSelectIds.clear();
                                    sura.forEach((element) {
                                      element["isSelect"] = false;
                                    });
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.indeterminate_check_box,
                                      color: Colors.white),
                                ),
                                IconButton(
                                  onPressed: () {
                                    // if (multiSelectIds.length == 0) {
                                    //   q.toast(q.resources.awalayattallang);
                                    // } else {
                                    playAudio(null);
                                    // int minid = multiSelectIds[0];
                                    // multiSelectIds.forEach((element) {
                                    //   minid = min(minid, element);
                                    // });
                                    // FileName f;
                                    // fileNames.forEach((element) {
                                    //   if (minid == element.i) {
                                    //     f = element;
                                    //   }
                                    // });
                                    // if (f == null) {
                                    //   showToast("ئاۋال ھۆججەت تاللاڭ");
                                    // } else {
                                    //   play(f, getcurSecond(f));
                                    // }
                                    // }
                                  },
                                  icon: Icon(Icons.play_arrow,
                                      color: Colors.white),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String aldinkiUyghurText = "";
  ayaW(item) {
    bool isShowSuraName = false;
    if (widget.sid == -1) {
      if (favSuraName != item['suraName']) {
        favSuraName = item['suraName'];
        isShowSuraName = true;
      }
    }
    bool isShowug = true;
    if (!q.arabicText.value &&
        !q.hayattarjimisi.value &&
        !q.aalimTarjimiai.value &&
        !q.yusupmuhahmadtarjimisi.value &&
        !q.showTarjimaHanyu.value &&
        !q.showTarjimaEnglish.value &&
        !q.showTarjimaTurky.value) {
      if (q.muahhmadsalih.value) {
        if (aldinkiUyghurText == item['ug_text']) {
          isShowug = false;
          return Container();
        } else {
          aldinkiUyghurText = item['ug_text'];
          isShowug = true;
        }
      }
    }
    String paraNumberS = "1";
    bool showPara = false;
    if (paraAya.contains(item["aya"]) && widget.sid != -1) {
      for (int i = 0; i < paraAya.length; i++) {
        if (paraAya[i] == item["aya"]) {
          paraNumberS = paraNumber[i].toString();
          showPara = true;
        }
      }
    }

    return Obx(() => Container(
          key: item["key"],
          color: item["isCheck"] ? q.theme.bgColor : q.theme.bgColor1,
          // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            children: [
              showPara
                  ? Container(
                      width: double.infinity,
                      height: 30,
                      alignment: Alignment.center,
                      color: q.theme.btnColor,
                      child: Text(
                        "${q.tirnakSol()} $paraNumberS - ${q.resources.para} ${q.tirnakOng()}",
                        textDirection: q.theme.dir,
                        style: q.theme.textStylePara,
                      ),
                    )
                  : Container(),
              isShowSuraName
                  ? Container(
                      height: 50,
                      width: double.infinity,
                      color: q.theme.bgColor3,
                      alignment: Alignment.center,
                      child: Text(
                        '﴿ ${item['suraName']}  ﴾',
                        textDirection: TextDirection.rtl,
                        style: q.theme.title5a,
                      ),
                    )
                  : Container(),
              item != 1
                  ? Container(
                      height: 1,
                      color: q.theme.bgColor3,
                    )
                  : Container(),
              isMultiSelect
                  ? Container(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            item["isSelect"] = !item["isSelect"];
                          });
                        },
                        child: item["isSelect"]
                            ? Icon(
                                FontAwesomeIcons.circleCheck,
                                color: Colors.green,
                              )
                            : Icon(
                                FontAwesomeIcons.circle,
                                color: q.theme.btnColor,
                              ),
                      ))
                  : Container(),
              TextButton(
                onPressed: () {
                  sura.forEach((element) {
                    element["isCheck"] = false;
                  });
                  setState(() {
                    item["isCheck"] = true;
                  });
                  //p.currentIndex.value = item["aya"];
                },
                onLongPress: () {
                  p.isShowStatusbar.value = true;
                  setBottomHeight();
                  setState(() {
                    item["isSelect"] = true;
                    isMultiSelect = true;
                  });
                },
                style: q.theme.btnStyleAya,
                child: Container(
                  // color: q.red,
                  child: Column(
                    children: [
                      q.arabicText.value
                          ? Container(
                              // color: q.red,
                              margin: EdgeInsets.all(10),
                              width: double.infinity,
                              child: StyledText(
                                text: item['text'] +
                                    '<number>' +
                                    item['snumber'] +
                                    "</number>",
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                                tags: {
                                  'number': StyledTextTag(
                                    style: q.theme.titleQa,
                                  )
                                },
                                style: q.theme.titleQa,
                              ),
                            )
                          : Container(),
                      q.muahhmadsalih.value && isShowug
                          ? Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: double.infinity,
                                  child: Text(item['ug_text'],
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.justify,
                                      style: q.theme.textHeight20),
                                ),
                                q.hayattarjimisi.value ||
                                        q.aalimTarjimiai.value ||
                                        q.yusupmuhahmadtarjimisi.value
                                    ? tarjimaSizik(item["aya"].toString(),
                                        q.resources.muahhmadsalihMidel, item)
                                    : Container()
                              ],
                            )
                          : Container(),
                      q.hayattarjimisi.value
                          ? Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: double.infinity,
                                  child: Text(item['heyet_text'],
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.justify,
                                      style: q.theme.textHeight20),
                                ),
                                tarjimaSizik(item["aya"].toString(),
                                    q.resources.hayattarjimisiMidel, item)
                              ],
                            )
                          : Container(),
                      q.aalimTarjimiai.value
                          ? Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: double.infinity,
                                  child: Text(item['eaoglu_text'],
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.justify,
                                      style: q.theme.textHeight20),
                                ),
                                tarjimaSizik(item["aya"].toString(),
                                    q.resources.aalimTarjimiaiMidel, item)
                              ],
                            )
                          : Container(),
                      q.yusupmuhahmadtarjimisi.value
                          ? Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: double.infinity,
                                  child: Text(item['myusuf_text'],
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.justify,
                                      style: q.theme.textHeight20),
                                ),
                                tarjimaSizik(
                                    item["aya"].toString(),
                                    q.resources.yusupmuhahmadtarjimisiMidel,
                                    item)
                              ],
                            )
                          : Container(),
                      q.showTarjimaHanyu.value
                          ? Container(
                              margin: EdgeInsets.all(10),
                              width: double.infinity,
                              child: Text(
                                item['ch_text'],
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.justify,
                                style: q.theme.textHeight20,
                              ),
                            )
                          : Container(),
                      q.showTarjimaEnglish.value
                          ? Container(
                              margin: EdgeInsets.all(10),
                              width: double.infinity,
                              child: Text(
                                item['en_text'],
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.justify,
                                style: q.theme.textHeight20,
                              ),
                            )
                          : Container(),
                      q.showTarjimaTurky.value
                          ? Container(
                              margin: EdgeInsets.all(10),
                              width: double.infinity,
                              child: Text(
                                item['tr_text'],
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.justify,
                                style: q.theme.textHeight20,
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
              contarolBox(item)
            ],
          ),
        ));
  }

  tarjimaSizik(String aya, String tarjiman, item) {
    Color color = item["isCheck"] ? q.theme.bgColor1 : q.theme.bgColor2;
    return Container(
      height: 20,
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Container(
            width: 10,
            height: 1,
            color: color,
          ),
          Container(
            width: 60,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            alignment: Alignment.center,
            child: Text(tarjiman, style: q.theme.textStyleUyghurAyaTarjiman),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 1,
              color: color,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            alignment: Alignment.center,
            child: Text(
              aya,
              style: q.theme.textStyleUyghurAyaNomur,
            ),
          ),
          Container(
            width: 10,
            height: 1,
            color: color,
          ),
        ],
      ),
    );
  }

  contarolBox(item) {
    return item["isCheck"]
        ? Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.rtl,
              children: [
                TextButton(
                  onPressed: () {
                    if (q.qraatID.value == 0) {
                      q.toast(q.resources.awarkiraatquxuring);
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new QASettingPage()),
                      ).then((value) {
                        qAServer.initQ(q);
                      });
                    } else {
                      playAudio(item);
                    }
                  },
                  child: Icon(
                    Icons.volume_up,
                    color: q.theme.btnColor,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) =>
                              new QTapPage(item["sid"], item["aya"])),
                    );
                  },
                  child: Icon(
                    Icons.chat,
                    color: q.theme.btnColor,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      item["fav"] = !item["fav"];
                    });
                    if (!item["fav"]) {
                      q.fav.removeQFav(item["sid"], item["aya"]);
                    } else {
                      q.fav.addQFav(item["sid"], item["aya"]);
                    }
                  },
                  child: Icon(
                    Icons.book_rounded,
                    color: item["fav"] ? q.theme.btnColor : q.theme.textColor2,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //ug_text ch_text en_text tr_text heyet_text eaoglu_text myusuf_text
                    String s = "";
                    if (widget.sid != -1) {
                      s = "${widget.sid} . $suraTitle \n ${item["text"]}﴿${item["sid"]}﴾";
                    } else {
                      s = "${item["text"]}﴿${item["sid"]}﴾";
                    }
                    s += "\n";
                    if (item["ug_text"] != "") {
                      s += " " + item["ug_text"] + "\n";
                    }
                    if (item["heyet_text"] != "") {
                      s += " " + item["heyet_text"] + "\n";
                    }
                    if (item["eaoglu_text"] != "") {
                      s += " " + item["eaoglu_text"] + "\n";
                    }
                    if (item["myusuf_text"] != "") {
                      s += " " + item["myusuf_text"] + "\n";
                    }
                    if (item["ch_text"] != "") {
                      s += " " + item["ch_text"] + "\n";
                    }
                    if (item["en_text"] != "") {
                      s += " " + item["en_text"] + "\n";
                    }
                    if (item["tr_text"] != "") {
                      s += " " + item["tr_text"] + "\n";
                    }
                    q.copyText(s);
                  },
                  child: Icon(
                    Icons.copy_rounded,
                    color: q.theme.btnColor,
                  ),
                ),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    '${item["page_no"]}. ${q.resources.bat}  ${item["juz_no"]}. ${q.resources.para}',
                    textDirection: q.theme.dir,
                    textAlign: q.theme.textAlignEnd,
                    style: q.theme.textStyleUyghurAyaTarjiman,
                  ),
                ))
              ],
            ),
          )
        : Container(
            height: 0,
          );
  }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  dynamic currentItem;
  playAudio(item) {
    currentItem = item;
    int port = q.qAServerPort.value;
    String homeUrl = "http://127.0.0.1:$port/";
    if (item == null) {
      List<String> playUrls = [];
      int index = -1;
      if (isOnePlay) {
        index = 0;
        playUrls.add(
            "$homeUrl${q.code.getFileMD5Name(item["sid"], item["aya"])}.mp3");
      } else {
        for (int i = 0; i < sura.length; i++) {
          if (sura[i]["isSelect"]) {
            if (index == -1) {
              index = i;
            }
            playUrls.add(
                "$homeUrl${q.code.getFileMD5Name(sura[i]["sid"], i + 1)}.mp3");
          }
        }
      }
      if (playUrls.length == 0) {
        q.toast(q.resources.awalayattallang);
        return;
      }
      p.isShowStatusbar.value = false;
      setBottomHeight();
      // setState(() {
      //   isMultiSelect = false;
      // });
      gotoAya(index);
      play(playUrls, index: 0);
    } else {
      if (widget.sid == -1) {
        String file = q.code.getFileMD5Name(item["sid"], item["aya"]);
        play(["$homeUrl$file.mp3"]);
      } else {
        List<String> playUrls = [];
        if (isOnePlay) {
          playUrls.add(
              "$homeUrl${q.code.getFileMD5Name(item["sid"], item["aya"])}.mp3");

          play(playUrls, index: 0);
        } else {
          for (int i = 0; i < sura.length; i++) {
            playUrls.add(
                "$homeUrl${q.code.getFileMD5Name(sura[i]["sid"], i + 1)}.mp3");
          }
          play(playUrls, index: item["aya"] - 1);
        }
      }
    }
  }

  bool isPlay = false;
  LoopMode loopMode = LoopMode.none;
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  Duration _currentPosition;
  Duration selStatr = Duration.zero;
  Duration selEnd = Duration.zero;
  double bottomHeight = 50;
  // ScrollController controller;
  List<String> playList = [];
  double playSpeed = 1.0;
  static const examplePlaybackRates = [0.25, 0.5, 0.75, 1.0, 1.25, 1.5, 2.0];
  bool isMultiSelect = false;
  // List<int> multiSelectIds = [];
  bool autoNext = true;
  // int currentIndex = 0;

  Timer _timer;

  // 启动Timer
  int _fi = 0;
  int fi = 0;
  void _startTimer() {
    final Duration duration = Duration(milliseconds: 10);
    cancelTimer();

    _timer = Timer.periodic(duration, (timer) {
      if (!isOnePlay) {
        if (fi != _fi) {
          _fi = fi;
          if (!isMultiSelect) {
            sura.forEach((element) {
              if (element["aya"] == fi + 1) {
                element["isCheck"] = true;

                currentItem = element;
              } else {
                element["isCheck"] = false;
              }
            });
            p.currentPlayIndex.value = fi;
            gotoAya(fi);
          } else {
            int selectedIndex = 0;
            for (int i = 0; i < sura.length; i++) {
              sura[i]["isCheck"] = false;
              if (sura[i]["isSelect"]) {
                if (selectedIndex == fi) {
                  sura[i]["isCheck"] = true;

                  currentItem = sura[i];

                  p.currentPlayIndex.value = i;
                  gotoAya(i);
                }
                selectedIndex++;
              }
            }
          }
        }
      }
      // checkTimer();
    });
  }

  gotoAya(int aya) {
    for (int i = 0; i < sura.length; i++) {
      sura[i]["isCheck"] = sura[i]["aya"] == aya + 1;
    }
    setState(() {});
    double h = 0;
    double max = 0;
    for (int i = 0; i < aya; i++) {
      GlobalKey _widgetKey = sura[i]["key"];
      if (_widgetKey != null) {
        final RenderBox renderBox =
            _widgetKey.currentContext?.findRenderObject() as RenderBox;
        if (renderBox != null) {
          h += renderBox.size.height;
        }
      }
    }
    RenderBox renderBox =
        bismillaKey.currentContext?.findRenderObject() as RenderBox;
    if (renderBox != null) {
      h += renderBox.size.height;
    }
    // RenderBox renderBox1 =
    //     paraBtnKey.currentContext?.findRenderObject() as RenderBox;
    // if (renderBox1 != null) {
    //   h += renderBox1.size.height;
    // }
    // if (widget.sid == -1 || widget.sid == 1 || widget.sid == 9) {
    //   h -= 40;
    //}
    if (aya != 0 && inPra == false) {
      h -= 40;
    }
    max = sccontroller.position.maxScrollExtent;
    sccontroller
        .animateTo(
            h < sccontroller.position.maxScrollExtent
                ? h
                : sccontroller.position.maxScrollExtent,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease)
        .then((value) {
      // print(
      //     "max:$max h:$h sccontroller.position:${sccontroller.position} sccontroller.position.maxScrollExtent:${sccontroller.position.maxScrollExtent}");
      if (sccontroller.position.maxScrollExtent != max) {
        gotoAya(aya);
      } else {
        // sura[aya]["isCheck"] = true;
        // setState(() {});
      }
    });

    setState(() {});
  }

  void cancelTimer() {
    if (_timer != null) {
      _timer.cancel();
    }
  }

  play(List<String> urls, {int index = 0}) async {
    if (p.isShowPlayer.value == true) {
      await assetsAudioPlayer.stop();
    }
    p.isShowPlayer.value = true;

    setBottomHeight();

    playList.clear();
    Playlist pl = Playlist();
    urls.forEach((url) {
      playList.add(url);
      pl.add(Audio.network(url));
    });
    // print(playList);
    if (playList.length == 0) {
      q.toast("ئاۋال ھۆججەت تاللاڭ");
      return;
    }
    if (assetsAudioPlayer.playlist != null) {
      int c = assetsAudioPlayer.playlist.audios.length;
      for (int i = 0; i < c; i++) {
        if (assetsAudioPlayer.playlist.audios.length > 0) {
          try {
            assetsAudioPlayer.playlist
                .remove(assetsAudioPlayer.playlist.audios[c - i - 1]);
          } catch (e) {
            print(e);
          }
        }
      }
      urls.forEach((url) {
        //playList.add(url);
        assetsAudioPlayer.playlist.add(Audio.network(url));
      });
    }
    try {
      //assetsAudioPlayer.playlist.removeAtIndex(0);
      await assetsAudioPlayer.open(
        pl,
        loopMode: loopMode,
        // seek: Duration(seconds: curSecond),
        autoStart: false,
        showNotification: true,
        playInBackground: PlayInBackground.enabled,
        audioFocusStrategy: AudioFocusStrategy.request(
            resumeAfterInterruption: false,
            resumeOthersPlayersAfterDone: false),
        headPhoneStrategy: HeadPhoneStrategy.pauseOnUnplug,
        notificationSettings: NotificationSettings(
          //seekBarEnabled: false,
          //stopEnabled: true,
          //customStopAction: (player){
          //  player.stop();
          //}
          // prevEnabled: false,
          // nextEnabled: false,
          customNextAction: (player) {
            // print('next');
            // player.seekBy(Duration(seconds: 15));
            player.next();
          },
          customPrevAction: (player) {
            //player.seekBy(Duration(seconds: -15));
            player.previous();
          },
          customStopAction: (player) {
            // print('object---------------1');
            assetsAudioPlayer.stop();
          },
          customPlayPauseAction: (p) {
            // print('object---------------2');
            assetsAudioPlayer.playOrPause();
          },

          //customStopIcon: AndroidResDrawable(name: 'ic_stop_custom'),
          //customPauseIcon: AndroidResDrawable(name:'ic_pause_custom'),
          //customPlayIcon: AndroidResDrawable(name:'ic_play_custom'),
        ),
      );
    } catch (t) {
      if (t.code == "PLAY_ERROR") {
        q.toast(q.resources.awarkiraatquxuring);
      }
      print("t:$t");
      //mp3 unreachable
    }

    // assetsAudioPlayer.onErrorDo = (handler) {
    //   print("handler:$handler");
    //   handler.player.stop();
    // };
    // assetsAudioPlayer.playlistFinished.listen((bool d) {
    //   // print("play finish$d");
    //   if (d) {
    //     // p.currentIndex.value = currentIndex;
    //     //   if (autoNext) {
    //     //     for (int i = 0; i < sura.length - 1; i++) {
    //     //       // sura[i]["isCheck"] = false;
    //     //       if (sura[i]["aya"] == currentPlayAya + 1) {
    //     //         sura.forEach((element) {
    //     //           element["isCheck"] = false;
    //     //         });
    //     //         setState(() {
    //     //           sura[i]["isCheck"] = true;
    //     //         });
    //     //         playAudio(sura[i]);
    //     //         return;
    //     //       }
    //     //     }
    //     //   }
    //   }
    // });
    // assetsAudioPlayer.playlistAudioFinished.listen((Playing d) {
    //   print("play finish$d");
    //   // if (isClose == false) {
    //   //   if (autoNext == 1) {
    //   //     playNext(1);
    //   //   } else if (autoNext == 2) {
    //   //     playNext(-1);
    //   //   }
    //   // }
    //   // isClose = false;
    // });
    // assetsAudioPlayer.current.listen((playingAudio) {
    //   print("CurSecond$playingAudio");
    //   if (playingAudio == null) {
    //     saveAudioPo();
    //   } else {}
    // });
    assetsAudioPlayer.playlistPlayAtIndex(index);
    isPlay = true;
    setState(() {});
  }

  void updateCurrent(int index) {
    //  playList[index];
    sura.forEach((element) {
      element["isCheck"] = false;
    });
    setState(() {
      sura[index]["isCheck"] = true;
    });
    // playAudio(sura[i]);
  }

  playNext(int n) {
    if (n > 0) {
      assetsAudioPlayer.next();
    } else {
      assetsAudioPlayer.previous();
    }
  }

  setloopMode() {
    if (loopMode == LoopMode.none) {
      loopMode = LoopMode.single;
    } else if (loopMode == LoopMode.single) {
      loopMode = LoopMode.playlist;
    } else if (loopMode == LoopMode.playlist) {
      loopMode = LoopMode.none;
    }
    assetsAudioPlayer.setLoopMode(loopMode);
    setState(() {});
  }

  void setBottomHeight() {
    double height = 0;
    if (p.isShowStatusbar.value) {
      height += 50;
    }
    if (p.isShowPlayer.value) {
      height += 140;
    }
    p.bottomHeight.value = height;
  }

  checkTimer() {
    // if (isEnd == false) {
    if (this.selStatr != Duration.zero && this.selEnd != Duration.zero) {
      if (_currentPosition > this.selEnd) {
        // isEnd = true;
        assetsAudioPlayer.pause();
        //等待1秒
        Future.delayed(Duration(seconds: 1), () {
          assetsAudioPlayer.seek(this.selStatr);
          assetsAudioPlayer.play();
        });
      }
    }
    // }
  }

  Widget player(RealtimePlayingInfos infos) {
    Duration currentPosition = infos.currentPosition;
    checkTimer();
    double qambarAsti = 55.0;
    double h = 140.0;
    double w = MediaQuery.of(context).size.width;
    if (w > 428) {
      w = 428;
    }

    double r = w * pi;

    // double a = (r / 2) - (h - qambarAsti);
    double startAngle = 19; //(180 / pi * acos(a / (r / 2)));
    startAngle = 90 - startAngle;
    double angleRange = (90 - startAngle) * 2;
    // print("startAngle: $startAngle angleRange: $angleRange ${sin(30)}");
    double t = 0 - r + h - qambarAsti;
    double l = w / 2 - r / 2;

    Duration duration = infos.duration.inMilliseconds == 0
        ? Duration(seconds: 7200)
        : infos.duration;

    double max = duration.inMilliseconds.toDouble();
    double initialValue = currentPosition.inMilliseconds.toDouble();
    if (initialValue > max) {
      initialValue = max;
    }
    if (initialValue < 0) {
      initialValue = 0;
    }

    return Container(
      color: q.theme.playerBgColor1,
      width: w,
      height: h,
      child: Stack(
          // clipBehavior: Clip.none,
          children: [
            Positioned(
              top: t,
              left: l,
              child: Container(
                height: r,
                width: r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: q.theme.playerBgColor,
                ),
              ),
            ),
            Positioned(
                top: t,
                left: l,
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(pi),
                  child: SleekCircularSlider(
                    min: 0,
                    max: max,
                    initialValue: initialValue,
                    appearance: CircularSliderAppearance(
                        customWidths: CustomSliderWidths(
                            trackWidth: 3, progressBarWidth: 3, handlerSize: 7),
                        customColors: CustomSliderColors(
                            trackColor: q.theme.playerTimeColor1,
                            progressBarColor: q.theme.playerTimeColor,
                            dotColor: q.theme.playerTimeColor,
                            hideShadow: true),
                        startAngle: startAngle,
                        angleRange: angleRange,
                        size: r,
                        animationEnabled: false),
                    onChangeEnd: (v) {
                      print("onChangeEnd: $v");
                      assetsAudioPlayer.seek(Duration(milliseconds: v.toInt()));
                    },
                  ),
                )),
            Positioned(
              bottom: 3,
              left: w / 2 - 23,
              child: infos.isPlaying
                  ? IconButton(
                      iconSize: 40,
                      onPressed: () {
                        assetsAudioPlayer.pause();
                        setState(() {
                          isPlay = false;
                        });
                      },
                      icon: Icon(
                        Icons.pause,
                        color: q.theme.playerTimeColor1,
                      ),
                    )
                  : IconButton(
                      iconSize: 40,
                      onPressed: () {
                        assetsAudioPlayer.play();
                        setState(() {
                          isPlay = true;
                        });
                      },
                      icon: Icon(
                        Icons.play_arrow,
                        color: q.theme.playerTimeColor1,
                      ),
                    ),
            ),
            Positioned(
                top: -10,
                left: w / 2 - 23,
                child: IconButton(
                  iconSize: 40,
                  onPressed: () {
                    assetsAudioPlayer.stop();
                    p.isShowPlayer.value = false;
                    setBottomHeight();
                    setState(() {
                      isPlay = false;
                    });
                  },
                  icon: Icon(
                    Icons.expand_more_rounded,
                    color: q.theme.playerBtnColor1,
                  ),
                )),
            Positioned(
              bottom: 45,
              left: 10,
              child: Text(
                "${(duration - currentPosition).inMinutes.toString().padLeft(2, "0")}:" +
                    "${(duration - currentPosition).inSeconds.toString().padLeft(2, "0")}",
                style: TextStyle(
                    color: q.theme.playerTimeColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 45,
              right: 10,
              child: Text(
                "${duration.inMinutes.toString().padLeft(2, "0")}:" +
                    "${duration.inSeconds.toString().padLeft(2, "0")}",
                style: TextStyle(
                    color: q.theme.playerTimeColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 55,
              right: w / 2 - 23,
              child: Text(
                "${currentPosition.inMinutes.toString().padLeft(2, "0")}:" +
                    "${currentPosition.inSeconds.toString().padLeft(2, "0")}",
                style: TextStyle(
                    color: q.theme.playerTimeColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 20,
              left: 50,
              child: Container(
                width: w - 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                      child: PopupMenuButton<double>(
                        initialValue: 1.0,
                        tooltip: 'Playback speed',
                        onSelected: (speed) {
                          assetsAudioPlayer.setPlaySpeed(speed);
                          setState(() {
                            playSpeed = speed;
                          });
                        },
                        itemBuilder: (context) {
                          return [
                            // ignore: sdk_version_ui_as_code
                            for (final speed in examplePlaybackRates)
                              PopupMenuItem(
                                value: speed,
                                child: Text(
                                  '${speed}x',
                                  style: TextStyle(
                                    color: q.theme.playerBtnColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                          ];
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            // Using less vertical padding as the text is also longer
                            // horizontally, so it feels like it would need more spacing
                            // horizontally (matching the aspect ratio of the video).
                            vertical: 10,
                            horizontal: 16,
                          ),
                          child: Text('${playSpeed}x',
                              style: TextStyle(
                                color: q.theme.playerBtnColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ),
                    IconButton(
                      iconSize: 36,
                      onPressed: () {
                        loopMode = LoopMode.playlist;
                        assetsAudioPlayer.setLoopMode(loopMode);
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.repeat,
                        color: loopMode == LoopMode.playlist
                            ? q.theme.playerBtnColor1
                            : q.theme.playerBtnColor,
                        size: 20,
                      ),
                    ),
                    IconButton(
                      iconSize: 36,
                      onPressed: () {
                        loopMode = LoopMode.single;
                        assetsAudioPlayer.setLoopMode(loopMode);
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.repeat_one_rounded,
                        color: loopMode == LoopMode.single
                            ? q.theme.playerBtnColor1
                            : q.theme.playerBtnColor,
                        size: 20,
                      ),
                    ),
                    IconButton(
                      iconSize: 36,
                      onPressed: () {
                        loopMode = LoopMode.none;
                        assetsAudioPlayer.setLoopMode(loopMode);
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.download_rounded,
                        color: loopMode == LoopMode.none
                            ? q.theme.playerBtnColor1
                            : q.theme.playerBtnColor,
                        size: 20,
                      ),
                    ),
                    IconButton(
                      iconSize: 36,
                      onPressed: () {
                        isOnePlay = !isOnePlay;
                        if (isOnePlay) {
                          q.toast(q.resources.birayatkoyuxhalitigaalmaxti);
                        } else {
                          q.toast(q.resources.kopyatkoyuxhalitigaalmaxti);
                        }
                        loopMode = LoopMode.none;
                        assetsAudioPlayer.setLoopMode(loopMode);
                        setState(() {});
                        playAudio(currentItem);
                      },
                      icon: Icon(
                        isOnePlay
                            ? Icons.looks_one_rounded
                            : Icons.view_list_rounded,
                        color: q.theme.playerBtnColor,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 3,
                left: w / 2 - 100,
                child: IconButton(
                  iconSize: 40,
                  onPressed: () {
                    setState(() {
                      if (selStatr != Duration.zero) {
                        selStatr = Duration.zero;
                      } else {
                        selStatr = currentPosition;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.subdirectory_arrow_right_rounded,
                    color: selStatr != Duration.zero
                        ? q.theme.playerBtnColor1
                        : q.theme.playerTimeColor1,
                    size: 20,
                  ),
                )),
            Positioned(
              bottom: 3,
              left: w / 2 - 110,
              child: selStatr != Duration.zero
                  ? Text(
                      "${selStatr.inMinutes.toString().padLeft(2, "0")}:" +
                          "${selStatr.inSeconds.toString().padLeft(2, "0")}",
                      style: TextStyle(
                          color: q.theme.playerTimeColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  : Text(""),
            ),
            Positioned(
                bottom: 3,
                left: w / 2 + 55,
                child: IconButton(
                  iconSize: 40,
                  onPressed: () {
                    setState(() {
                      if (selEnd != Duration.zero) {
                        selEnd = Duration.zero;
                      } else {
                        selEnd = currentPosition;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.subdirectory_arrow_left_rounded,
                    color: selEnd != Duration.zero
                        ? q.theme.playerBtnColor1
                        : q.theme.playerTimeColor1,
                    size: 20,
                  ),
                )),
            Positioned(
              bottom: 3,
              left: w / 2 + 85,
              child: selEnd != Duration.zero
                  ? Text(
                      "${selEnd.inMinutes.toString().padLeft(2, "0")}:" +
                          "${selEnd.inSeconds.toString().padLeft(2, "0")}",
                      style: TextStyle(
                          color: q.theme.playerTimeColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  : Text(""),
            ),
          ]),
    );

    // return Column(
    //   children: [
    //     PositionSeekWidget(
    //       currentPosition: infos.currentPosition,
    //       duration: infos.duration.inMilliseconds == 0
    //           ? Duration(seconds: 7200)
    //           : infos.duration,
    //       seekTo: (to) {
    //         assetsAudioPlayer.seek(to);
    //       },
    //       selStart: (v) {
    //         // print(v);
    //         this.selStatr = v;
    //       },
    //       selEnd: (v) {
    //         // print(v);
    //         this.selEnd = v;
    //       },
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         IconButton(
    //             icon: Icon(Icons.close_outlined),
    //             onPressed: () {
    //               assetsAudioPlayer.stop();
    //               p.isShowPlayer.value = false;
    //               setBottomHeight();
    //               setState(() {
    //                 isPlay = false;
    //               });
    //             }),
    //         Container(
    //           padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
    //           child: PopupMenuButton<double>(
    //             initialValue: 1.0,
    //             tooltip: 'Playback speed',
    //             onSelected: (speed) {
    //               assetsAudioPlayer.setPlaySpeed(speed);
    //               setState(() {
    //                 playSpeed = speed;
    //               });
    //             },
    //             itemBuilder: (context) {
    //               return [
    //                 // ignore: sdk_version_ui_as_code
    //                 for (final speed in examplePlaybackRates)
    //                   PopupMenuItem(
    //                     value: speed,
    //                     child: Text('${speed}x'),
    //                   )
    //               ];
    //             },
    //             child: Padding(
    //               padding: const EdgeInsets.symmetric(
    //                 // Using less vertical padding as the text is also longer
    //                 // horizontally, so it feels like it would need more spacing
    //                 // horizontally (matching the aspect ratio of the video).
    //                 vertical: 10,
    //                 horizontal: 16,
    //               ),
    //               child: Text('${playSpeed}x'),
    //             ),
    //           ),
    //         ),
    //         IconButton(
    //           iconSize: 48,
    //           onPressed: () {
    //             playNext(-1);
    //           },
    //           icon: Icon(
    //             Icons.skip_previous,
    //             color: Colors.blue,
    //           ),
    //         ),
    //         infos.isPlaying
    //             ? IconButton(
    //                 iconSize: 36,
    //                 onPressed: () {
    //                   assetsAudioPlayer.pause();
    //                   setState(() {
    //                     isPlay = false;
    //                   });
    //                 },
    //                 icon: Icon(
    //                   Icons.pause,
    //                   color: Colors.blue,
    //                 ),
    //               )
    //             : IconButton(
    //                 iconSize: 36,
    //                 onPressed: () {
    //                   assetsAudioPlayer.play();
    //                   setState(() {
    //                     isPlay = true;
    //                   });
    //                 },
    //                 icon: Icon(
    //                   Icons.play_arrow,
    //                   color: Colors.blue,
    //                 ),
    //               ),
    //         IconButton(
    //           iconSize: 48,
    //           onPressed: () {
    //             playNext(1);
    //           },
    //           icon: Icon(
    //             Icons.skip_next,
    //             color: Colors.blue,
    //           ),
    //         ),
    //         IconButton(
    //           iconSize: 36,
    //           onPressed: () {
    //             setloopMode();
    //           },
    //           icon: loopMode == LoopMode.none
    //               ? Icon(
    //                   Icons.vertical_align_bottom,
    //                   size: 20,
    //                 )
    //               : loopMode == LoopMode.single
    //                   ? Icon(
    //                       Icons.repeat_one,
    //                       color: Colors.yellow,
    //                       size: 20,
    //                     )
    //                   : Icon(
    //                       Icons.repeat,
    //                       color: Colors.yellow,
    //                       size: 20,
    //                     ),
    //         ),
    //       ],
    //     ),
    //   ],
    // );
  }

  @override
  void dispose() {
    p.isShowStatusbar.value = false;
    p.isShowPlayer.value = false;
    setBottomHeight();
    assetsAudioPlayer.dispose();
    super.dispose();
  }
}
