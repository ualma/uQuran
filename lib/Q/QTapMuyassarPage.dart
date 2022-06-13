import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_text/styled_text.dart';
import 'MyBackSetting.dart';
import 'Q.dart';
import 'QTFav.dart';

class QTapMuyassarPage extends StatefulWidget {
  QTapMuyassarPage({Key key}) : super(key: key);
  @override
  State<QTapMuyassarPage> createState() => _QTapMuyassarPageState();
}

class _QTapMuyassarPageState extends State<QTapMuyassarPage>
    with TickerProviderStateMixin {
  final q = Get.put(Q());
  final qTFav = Get.put(QTFav());
  final sccontroller = ScrollController();
  TabController _tabController;
  List<Map> sura = [];
  List<int> ayaList = [];
  int suraID = 1;
  int aya = 1;
  Map tapsir;
  bool fav = false;

  @override
  void initState() {
    super.initState();
    load();
  }

  load() async {
    await q.favMuyassar.init();
    sura.clear();
    List<Map> r =
        await q.sql.select('select id,n from q_sura order by id desc');
    r.forEach((element) {
      sura.add({"id": element["id"], "n": element["n"]});
    });
    if (_tabController != null) {
      _tabController.dispose();
    }
    _tabController = TabController(length: sura.length, vsync: this);

    await upadateAyaList();

    showOpenSaved();
  }

  showOpenSaved() async {
    int suraIDs = await q.setting.getSettingInt("muyassarCsuraID", suraID);
    int ayas = await q.setting.getSettingInt("muyassarCaya", aya);
    if (suraID != suraIDs || ayas != aya) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              contentPadding: const EdgeInsets.fromLTRB(0.0, 20.0, 10.0, 24.0),
              title: Center(
                  child: Text(
                q.resources.uqur,
                textDirection: q.theme.dir,
                style: q.theme.title2,
              )),
              content: Container(
                  alignment: Alignment.center,
                  height: 120,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(
                        q.resources.aldinkiSaklapkoyganjaydinbaxlapokumsiz,
                        textAlign: TextAlign.center,
                        textDirection: q.theme.dir,
                        style: q.theme.textStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          "$suraIDs. ${sura[114 - suraIDs]["n"]}  [$ayas]",
                          textAlign: TextAlign.center,
                          textDirection: q.theme.dir,
                          style: q.theme.title2a,
                        ),
                      ),
                    ],
                  )),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text(
                    q.resources.haa,
                    style: q.theme.textStyle,
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    q.resources.kaytix,
                    style: q.theme.textStyle,
                  ),
                ),
              ],
              actionsAlignment: MainAxisAlignment.center,
            );
          }).then((value) {
        if (value != null) {
          if (value) {
            suraID = suraIDs;
            aya = ayas;
            upadateAyaList();
          }
        }
      });
    }
  }

  upadateAyaList() async {
    tapsir = await q.sql.selectOne(
        'SELECT id,sura,aya,text,ug_text,(SELECT ug_muyassar FROM a_tapsir where sura=$suraID and aya=$aya) as ug_muyassar,(SELECT ar_muyassar FROM a_tapsir where sura=$suraID and aya=$aya) as ar_muyassar FROM a_Q_text where sura=$suraID and aya=$aya');

    Future.delayed(Duration(milliseconds: 500), () {
      int suraIndex = 114 - suraID;
      _tabController.index = suraIndex;
      _tabController.animateTo(suraIndex,
          duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    });
    ayaList.clear();
    for (int i = 0; i < q.sc[suraID - 1]; i++) {
      ayaList.add(i + 1);
    }
    fav = q.favMuyassar.isQFavMuyassar(suraID * 1000 + aya);
    setState(() {});
    if (sccontroller.hasClients) {
      sccontroller.animateTo(0,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    }
  }

  next() async {
    aya++;
    if (q.sc[suraID - 1] < aya) {
      if (suraID < 114) {
        suraID++;
        aya = 1;
      } else {
        suraID = 1;
        aya = 1;
      }
    }
    await upadateAyaList();
  }

  before() async {
    aya--;
    if (aya < 1) {
      if (suraID > 1) {
        suraID--;
        aya = q.sc[suraID - 1];
      } else {
        suraID = 114;
        aya = q.sc[suraID - 1];
      }
    }
    await upadateAyaList();
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
                setState(() {});
              }),
              Container(
                height: 40,
                alignment: Alignment.topCenter,
                child: Text(
                  q.resources.muyassar,
                  style: q.theme.title3,
                  softWrap: false,
                ),
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      decoration: BoxDecoration(
                        color: q.theme.bgColor1,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: _tabController != null
                          ? TabBar(
                              controller: _tabController,
                              isScrollable: true,
                              labelStyle: q.theme.title4,
                              labelColor: q.theme.textColor,
                              indicatorColor: q.theme.textColor,
                              unselectedLabelColor: q.theme.textColor1,
                              onTap: (index) {
                                setState(() {
                                  aya = 1;
                                  suraID = 114 - index;
                                });
                                upadateAyaList();
                              },
                              tabs: sura.map((e) {
                                return Text(
                                  e["id"].toString() + '. ' + e['n'],
                                  textDirection: TextDirection.rtl,
                                  style: q.theme.title2a,
                                );
                              }).toList(),
                            )
                          : Container(),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: BoxDecoration(
                      color: q.theme.bgColor1,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      0.0, 20.0, 10.0, 24.0),
                                  title: Center(
                                      child: Text(q.resources.ayatkatizberix,
                                          style: q.theme.title2)),
                                  content: Container(
                                      // height: 280,
                                      child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    reverse: false,
                                    padding: EdgeInsets.all(0.0),
                                    physics: BouncingScrollPhysics(),
                                    child: Wrap(
                                        textDirection: TextDirection.ltr,
                                        alignment: WrapAlignment.center,
                                        children: ayaList
                                            .map((item) => Container(
                                                  color: q.theme.bgColor,
                                                  height: 40,
                                                  width: 40,
                                                  margin: EdgeInsets.all(10),
                                                  child: TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(
                                                          context, item - 1);
                                                    },
                                                    child: Text(
                                                      item.toString(),
                                                      style: q.theme.textStyle,
                                                    ),
                                                  ),
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
                            if (value != null) {
                              setState(() {
                                aya = value + 1;
                              });
                              upadateAyaList();
                            }
                          });
                        },
                        child: Text(
                          aya.toString(),
                          style: q.theme.title2,
                        )),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: sccontroller,
                  scrollDirection: Axis.vertical,
                  reverse: false,
                  padding: EdgeInsets.all(0.0),
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    decoration: BoxDecoration(
                        color: q.theme.bgColor1,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    margin: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          color: q.theme.bgColor1,
                          margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                          child: ayaW(tapsir),
                        ),
                        Container(
                          color: q.theme.bgColor1,
                          margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                          child: tapW(tapsir),
                        ),
                        Container(
                          height: 2,
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          color: q.theme.bgColor3,
                        ),
                        Container(
                          color: q.theme.bgColor1,
                          margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                          child: tapArW(tapsir),
                        ),
                      ],
                    ),
                  ),
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
                          showbookmarks();
                        },
                        icon: Icon(
                          Icons.bookmarks_rounded,
                          color: q.theme.btnColor,
                        )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            fav = !fav;
                          });
                          if (!fav) {
                            q.favMuyassar
                                .removeQFavMuyassar(suraID * 1000 + aya);
                          } else {
                            q.favMuyassar.addQFavMuyassar(suraID * 1000 + aya);
                          }
                        },
                        icon: Icon(
                          Icons.book_rounded,
                          color: fav ? q.theme.btnColor : q.theme.textColor2,
                        )),
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
                          q.setting.saveSettingInt("muyassarCsuraID", suraID);
                          q.setting.saveSettingInt("muyassarCaya", aya);
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
  }

  ayaW(item) {
    return Container(
      color: q.theme.bgColor,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: StyledText(
              text: item == null
                  ? ""
                  : item['text'] +
                      ' <number>﴿' +
                      item['aya'].toString() +
                      "﴾</number>",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              tags: {
                'number': StyledTextTag(
                  style: q.theme.titleQa,
                ),
              },
              style: q.theme.titleQa,
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                child: Text(
                  item == null ? "" : item['ug_text'],
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                  style: q.theme.textHeight20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  tapW(item) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        item == null ? "" : item['ug_muyassar'],
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.justify,
        style: q.theme.textHeight20,
      ),
    );
  }

  tapArW(item) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        item == null ? "" : item['ar_muyassar'],
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.justify,
        style: q.theme.titleQaT,
      ),
    );
  }

  showbookmarks() {
    if (q.favMuyassar.qFavMuyassar.length == 0) {
      q.toast(q.resources.saklangalaryok);
    } else {
      List<Map> favsura = [];
      List<int> ss = [];
      for (int i = 0; i < q.favMuyassar.qFavMuyassar.length; i++) {
        int sid = q.favMuyassar.qFavMuyassar[i];
        sid = (sid ~/ 1000).toInt();
        if (!ss.contains(sid)) {
          ss.add(sid);
        }
      }
      for (int i = 0; i < sura.length; i++) {
        if (ss.contains(sura[sura.length - i - 1]['id'])) {
          favsura.add(sura[sura.length - i - 1]);
        }
      }

      updateAyas(favsura[0]['id']);

      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              // contentPadding: const EdgeInsets.fromLTRB(0.0, 20.0, 10.0, 24.0),
              title: Center(
                  child: Text(
                q.resources.sakliwalganlar,
                textDirection: q.theme.dir,
                style: q.theme.title2,
              )),
              content: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Row(
                      textDirection: q.theme.dir,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            // margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                            decoration: BoxDecoration(
                              color: q.theme.bgColor1,
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
                                    children: favsura
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
                          // margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                          decoration: BoxDecoration(
                            color: q.theme.bgColor1,
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
                                                Navigator.of(context).pop(true);
                                              }),
                                            ))
                                        .toList(),
                                  ))),
                        ),
                      ],
                    ),
                  )),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    q.resources.kaytix,
                    style: q.theme.textStyle,
                  ),
                ),
              ],
              actionsAlignment: MainAxisAlignment.center,
            );
          }).then((value) {
        if (value != null) {
          if (value) {
            suraID = qTFav.suraid.value;
            aya = qTFav.ayaid.value;
            upadateAyaList();
          }
        }
      });
    }
  }

  suraW(item) {
    return Obx(() => Container(
          margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
          color:
              qTFav.suraid == item['id'] ? q.theme.bgColor1 : q.theme.bgColor,
          child: Column(
            children: [
              item["id"] != 1
                  ? Container(
                      height: 2,
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      color: q.theme.bgColor3,
                    )
                  : Container(),
              ListTile(
                onTap: () {
                  updateAyas(item['id']);
                },
                title: Center(
                  child: Text(
                    item["id"].toString() + '. ' + item['n'],
                    textDirection: q.theme.dir,
                    style: q.theme.title2a,
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
      color: q.theme.bgColor,
      child: Column(
        children: [
          item["i"] != 1
              ? Container(
                  height: 2,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  color: q.theme.bgColor3,
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
                textDirection: q.theme.dir,
                style: q.theme.title2a,
              ),
            ),
          ),
        ],
      ),
    );
  }

  updateAyas(int id) {
    qTFav.suraid.value = id;

    List<int> ayas = [];
    for (int i = 0; i < q.favMuyassar.qFavMuyassar.length; i++) {
      int sid = q.favMuyassar.qFavMuyassar[i];
      sid = (sid ~/ 1000).toInt();
      if (qTFav.suraid.value == sid) {
        int aya = q.favMuyassar.qFavMuyassar[i] - sid * 1000;
        if (!ayas.contains(aya)) {
          ayas.add(aya);
        }
      }
    }
    //排序ayas
    ayas.sort();
    List<Map> ayas2 = [];
    int i = 0;
    ayas.forEach((element) {
      i++;
      ayas2.add({'id': element, "i": i});
    });

    qTFav.ayas.value = ayas2;
  }
}
