import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';
import 'DuaPageShow.dart';
import 'package:styled_text/styled_text.dart';
import 'MyBackSetting.dart';
import 'MyLoading.dart';
import 'Q.dart';
import 'QIbniTapPage.dart';
import 'QTapPage.dart';

class QSearch extends StatefulWidget {
  QSearch({Key key}) : super(key: key);
  @override
  State<QSearch> createState() => _QSearchState();
}

class _QSearchState extends State<QSearch> with SingleTickerProviderStateMixin {
  final q = Get.put(Q());
  final searchcontroller = TextEditingController();
  FocusNode searchFocusNode = FocusNode();

  final quranSccontroller = ScrollController();
  final ibniSccontroller = ScrollController();

  final muyassarSccontroller = ScrollController();
  final zarifSccontroller = ScrollController();
  final jalaleinSccontroller = ScrollController();
  final mukhtasarSccontroller = ScrollController();

  final duaSccontroller = ScrollController();

  int itemCount = 0;
  String search = "";
  bool loading = true;

  List<String> searchList = [];
  TabController _tabController;
  int tapid;

  List<Map> sura114 = [];

  List<Map> sura = [];
  List _elements = [];
  List<Map> muyassar = [];
  List<Map> zarif = [];
  List<Map> jalalein = [];
  List<Map> mukhtasar = [];
  List duatItems = [];

  bool isStartSearch = false;
  String qekit3 = "";

  @override
  void initState() {
    super.initState();
    searchList = [
      q.resources.dualar,
      q.resources.muhtasar,
      q.resources.jalalein,
      q.resources.zarif,
      q.resources.muyassar,
      q.resources.ibnikasir,
      q.resources.quran,
    ];
    tapid = searchList.length - 1;
    _tabController = TabController(
        length: searchList.length, vsync: this, initialIndex: tapid);
    init();
  }

  init() async {
    await q.fav.init();
    sura114.clear();
    List<Map> r = await q.sql.select('select id,n from q_sura order by id asc');
    r.forEach((element) {
      sura114.add({"id": element["id"], "n": element["n"]});
    });
  }

  changeqekit3() {
    if (loading == false) {
      setState(() {
        switch (qekit3) {
          case "":
            qekit3 = ".";
            break;
          case ".":
            qekit3 = "..";
            break;
          case "..":
            qekit3 = "...";
            break;
          case "...":
            qekit3 = "";
            break;
        }
      });
      Future.delayed(Duration(milliseconds: 500), () {
        changeqekit3();
      });
    }
  }

  goSearch() async {
    searchFocusNode.unfocus();
    if (loading == false) {
      return;
    }
    setState(() {
      sura = [];
      _elements = [];
      muyassar = [];
      zarif = [];
      jalalein = [];
      mukhtasar = [];
      duatItems = [];
      loading = false;
      isStartSearch = true;
    });
    changeqekit3();

    search = search.trim();
    String s = "%$search%";

    String sql =
        'select aya,text,ug_text,myusuf_text,heyet_text,eaoglu_text,ch_text,en_text,tr_text,sura as suraNumber,(select n from q_sura where id=sura) as suraName';
    sql +=
        ' from a_Q_text where text like ? or ug_text like ? or myusuf_text like ? or heyet_text like ? or eaoglu_text like ? or ch_text like ? or en_text like ? or tr_text like ?';
    List<Map> r = await q.sql.selectSearch(sql, [s, s, s, s, s, s, s, s]);
    sura.clear();
    for (int i = 0; i < r.length; i++) {
      var element = r[i];
      String ugtext = element["ug_text"];
      String myusuftext = element["myusuf_text"];
      String heyettext = element["heyet_text"];
      String eaoglutext = element["eaoglu_text"];
      String chtext = element["ch_text"];
      String entext = element["en_text"];
      String trtext = element["tr_text"];
      String suraName =
          element["suraNumber"].toString() + ". " + element["suraName"];
      int sid = element["suraNumber"];

      bool fav = q.fav.isQFav(sid, element["aya"]);

      String text = element["text"];

      if (element["aya"] == 1 && (sid != 1 && sid != 9)) {
        text = text.replaceAll("بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ ", "");
      }
      String snumber = "";
      snumber += ' ﴿${element["aya"]}﴾';

      sura.add({
        "isCheck": false,
        "isSelect": false,
        "suraName": suraName,
        "sid": sid,
        "aya": element["aya"],
        "text": q.getRedColor(text, search),
        "snumber": q.getRedColor(snumber, search),
        "ug_text": q.getRedColor(ugtext, search),
        "ch_text": q.getRedColor(chtext, search),
        "en_text": q.getRedColor(entext, search),
        "tr_text": q.getRedColor(trtext, search),
        "heyet_text": q.getRedColor(heyettext, search),
        "eaoglu_text": q.getRedColor(eaoglutext, search),
        "myusuf_text": q.getRedColor(myusuftext, search),
        "fav": fav,
        "key": GlobalKey()
      });
    }
    if (sura.length > 0) {
      sura[0]["isCheck"] = true;
    }
    q.toast(
        "${q.resources.quran}: ${sura.length} ${q.resources.naqijaTepildi}");
    setState(() {});
    Future.delayed(Duration(milliseconds: 500), () {
      if (quranSccontroller.hasClients) {
        quranSccontroller.animateTo(0,
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      }
    });

    r = await q.sql.selectSearch(
        'SELECT id,sura,aya,ayaMax,title,(select n from q_sura where id=a_ibnikasir.sura) as n FROM a_ibnikasir where id in(SELECT id FROM a_ibnikasir_m where mazmun like ?) or title like ?',
        [s, s]);
    _elements.clear();
    r.forEach((element) {
      if (element["aya"] == element["ayaMax"]) {
        _elements.add({
          "id": element["id"],
          "group":
              "${element["sura"].toString().padLeft(3)}. <b>${element["n"]}</b> ${element["aya"].toString().padLeft(6)}- ${q.resources.ayat}",
          "title": q.getRedColor(element["title"], search)
        });
      } else {
        _elements.add({
          "id": element["id"],
          "group":
              "${element["sura"].toString().padLeft(3)}. <b>${element["n"]}</b> ${element["aya"].toString().padLeft(3)}-${element["ayaMax"].toString().padLeft(3)} ${q.resources.ayat}",
          "title": q.getRedColor(element["title"], search)
        });
      }
    });

    q.toast(
        "${q.resources.ibnikasir}: ${_elements.length} ${q.resources.naqijaTepildi}");
    setState(() {});
    Future.delayed(Duration(milliseconds: 500), () {
      if (ibniSccontroller.hasClients) {
        ibniSccontroller.animateTo(-10,
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      }
    });

//-----------------------------------------------------------------------------------------------------------------------
    muyassar.clear();
    r = await q.sql.selectSearch(
        'SELECT   a_tapsir.id, a_tapsir.sura, a_tapsir.aya, a_tapsir.ar_muyassar, a_tapsir.ug_muyassar,a_Q_text.ug_text, a_Q_text.text FROM a_tapsir INNER JOIN ' +
            'a_Q_text ON a_tapsir.sura = a_Q_text.sura AND a_tapsir.aya = a_Q_text.aya where a_tapsir.ar_muyassar like ? or a_tapsir.ug_muyassar like ?',
        [s, s]);
    r.forEach((element) {
      muyassar.add({
        "id": element["id"],
        "sura": element["sura"],
        "aya": element["aya"],
        "ug_text": element["ug_text"],
        "text": element["text"],
        "ar_muyassar": q.getRedColor(element["ar_muyassar"], search),
        "ug_muyassar": q.getRedColor(element["ug_muyassar"], search)
      });
    });
    q.toast(
        "${q.resources.muyassar}: ${muyassar.length} ${q.resources.naqijaTepildi}");
    setState(() {});
    Future.delayed(Duration(milliseconds: 500), () {
      if (muyassarSccontroller.hasClients) {
        muyassarSccontroller.animateTo(0,
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      }
    });
//-----------------------------------------------------------------------------------------------------------------------
    zarif.clear();
    r = await q.sql.selectSearch(
        'SELECT   a_tapsir.id, a_tapsir.sura, a_tapsir.aya, a_tapsir.ug_zarif, a_Q_text.ug_text, a_Q_text.text FROM a_tapsir INNER JOIN ' +
            'a_Q_text ON a_tapsir.sura = a_Q_text.sura AND a_tapsir.aya = a_Q_text.aya where a_tapsir.ug_zarif like ?',
        [s]);
    r.forEach((element) {
      zarif.add({
        "id": element["id"],
        "sura": element["sura"],
        "aya": element["aya"],
        "ug_text": element["ug_text"],
        "text": element["text"],
        "ug_zarif": q.getRedColor(element["ug_zarif"], search)
      });
    });
    q.toast(
        "${q.resources.zarif}: ${zarif.length} ${q.resources.naqijaTepildi}");
    setState(() {});
    Future.delayed(Duration(milliseconds: 500), () {
      if (zarifSccontroller.hasClients) {
        zarifSccontroller.animateTo(0,
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      }
    });
//-----------------------------------------------------------------------------------------------------------------------
    jalalein.clear();
    r = await q.sql.selectSearch(
        'SELECT   a_tapsir.id, a_tapsir.sura, a_tapsir.aya, a_tapsir.ar_jalalein, a_Q_text.ug_text, a_Q_text.text FROM a_tapsir INNER JOIN ' +
            'a_Q_text ON a_tapsir.sura = a_Q_text.sura AND a_tapsir.aya = a_Q_text.aya where a_tapsir.ar_jalalein like ?',
        [s]);
    r.forEach((element) {
      jalalein.add({
        "id": element["id"],
        "sura": element["sura"],
        "aya": element["aya"],
        "ug_text": element["ug_text"],
        "text": element["text"],
        "ar_jalalein": q.getRedColor(element["ar_jalalein"], search)
      });
    });
    q.toast(
        "${q.resources.jalalein}: ${jalalein.length} ${q.resources.naqijaTepildi}");
    setState(() {});
    Future.delayed(Duration(milliseconds: 500), () {
      if (jalaleinSccontroller.hasClients) {
        jalaleinSccontroller.animateTo(0,
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      }
    });
//-----------------------------------------------------------------------------------------------------------------------
    mukhtasar.clear();
    r = await q.sql.selectSearch(
        'SELECT   a_tapsir_mukhtasar.id, a_tapsir_mukhtasar.sura, a_tapsir_mukhtasar.aya, a_tapsir_mukhtasar.ar_text, a_tapsir_mukhtasar.en_text, a_tapsir_mukhtasar.cn_text, a_tapsir_mukhtasar.tr_text, a_Q_text.ug_text, a_Q_text.text FROM a_tapsir_mukhtasar INNER JOIN ' +
            'a_Q_text ON a_tapsir_mukhtasar.sura = a_Q_text.sura AND a_tapsir_mukhtasar.aya = a_Q_text.aya where a_tapsir_mukhtasar.ar_text like ? or a_tapsir_mukhtasar.en_text like ? or a_tapsir_mukhtasar.tr_text like ? or a_tapsir_mukhtasar.cn_text like ?',
        [s, s, s, s]);
    r.forEach((element) {
      mukhtasar.add({
        "id": element["id"],
        "sura": element["sura"],
        "aya": element["aya"],
        "ug_text": element["ug_text"],
        "text": element["text"],
        "ar_text": q.getRedColor(element["ar_text"], search),
        "en_text": q.getRedColor(element["en_text"], search),
        "tr_text": q.getRedColor(element["tr_text"], search),
        "cn_text": q.getRedColor(element["cn_text"], search)
      });
    });
    q.toast(
        "${q.resources.muhtasar}: ${mukhtasar.length} ${q.resources.naqijaTepildi}");
    setState(() {});
    Future.delayed(Duration(milliseconds: 500), () {
      if (mukhtasarSccontroller.hasClients) {
        mukhtasarSccontroller.animateTo(0,
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      }
    });
//-----------------------------------------------------------------------------------------------------------------------

    List<Map> j = await q.sql.selectSearch(
        "SELECT id, tema FROM a_Dua where tema like ? or id in(select tartip from a_Dua_rs where text_u like ? or text_a like ?)",
        [s, s, s]);

    duatItems.clear();
    j.forEach((e) {
      duatItems.add({"id": e["id"], "tema": q.getRedColor(e["tema"], search)});
    });
    q.toast(
        "${q.resources.dualar}: ${duatItems.length} ${q.resources.naqijaTepildi}");
    setState(() {});

    setState(() {
      loading = true;
    });

    Future.delayed(Duration(milliseconds: 500), () {
      if (duaSccontroller.hasClients) {
        duaSccontroller.animateTo(0,
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      }
    });
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
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: q.theme.bgColor1,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    textDirection: q.theme.dir,
                    children: [
                      Expanded(
                        child: Container(
                          height: 30,
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: TextField(
                            controller: searchcontroller,
                            style: q.theme.textStyle,
                            textInputAction: TextInputAction.search,
                            onSubmitted: (v) {
                              goSearch();
                            },
                            // onTap: () {
                            //   searchcontroller.selection = TextSelection(
                            //       baseOffset: 0,
                            //       extentOffset: searchcontroller.text.length);
                            // },
                            focusNode: searchFocusNode,
                            keyboardType: TextInputType.text,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: q.resources.search,
                              hintStyle: q.theme.title1,
                              enabledBorder: new UnderlineInputBorder(
                                // 不是焦点的时候颜色
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: new UnderlineInputBorder(
                                // 焦点集中的时候颜色
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: (text) {
                              search = text;
                              // goSearch();
                            },
                          ),
                        ),
                      ),
                      loading
                          ? TextButton(
                              onPressed: () {
                                goSearch();
                              },
                              child: Container(
                                height: 45,
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                alignment: Alignment.center,
                                // decoration: BoxDecoration(
                                //   color: q.theme.bgColor,
                                //   borderRadius: BorderRadius.all(Radius.circular(5)),
                                // ),
                                child: Row(
                                  children: [
                                    Text(
                                      q.resources.search1,
                                      style: q.theme.btnText1,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.search,
                                      color: q.theme.textColor2,
                                    ),
                                  ],
                                ),
                              ),
                              style: ButtonStyle(
                                overlayColor:
                                    MaterialStateProperty.all(q.theme.bgColor),
                                backgroundColor:
                                    MaterialStateProperty.all(q.theme.bgColor),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(0)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            )
                          : MyLoading(),
                    ],
                  )),
              Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: q.theme.bgColor1,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
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
                  },
                  tabs: searchList.map((e) {
                    return Tab(
                      child: Text(e),
                    );
                  }).toList(),
                ),
              ),
              Expanded(
                child: TabBarView(
                  //构建
                  controller: _tabController,
                  physics: BouncingScrollPhysics(),
                  children: searchList.map((e) {
                    return searchView(e);
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget searchView(String t) {
    if (t == q.resources.dualar) {
      return dua();
    } else if (t == q.resources.quran) {
      return quran();
    } else if (t == q.resources.ibnikasir) {
      return ibnikasir();
    } else if (t == q.resources.muyassar) {
      return muyassarW();
    } else if (t == q.resources.zarif) {
      return zarifW();
    } else if (t == q.resources.jalalein) {
      return jalaleinW();
    } else if (t == q.resources.muhtasar) {
      return mukhtasarW();
    } else {
      return Container(
        alignment: Alignment.center,
        child: Text(t, textScaleFactor: 5),
      );
    }
  }

  quran() {
    aldinkSuraNameText = "";
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      alignment: Alignment.center,
      // height: 50,
      decoration: BoxDecoration(
        color: q.theme.bgColor1,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(10),
      child: Container(
        color: q.theme.bgColor1,
        child: Column(
          children: [
            Container(
              height: 30,
              child: Text(
                sura == null
                    ? ""
                    : sura.length == 0
                        ? !isStartSearch
                            ? qekit3
                            : loading
                                ? "0 ${q.resources.naqijaTepildi}"
                                : qekit3
                        : "${sura.length} ${q.resources.naqijaTepildi}",
                textDirection: q.theme.dir,
                style: q.theme.textStyle,
              ),
            ),
            Expanded(
              child: new ListView.builder(
                  controller: quranSccontroller,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return ayaW(sura[index]);
                  },
                  itemCount: sura == null ? 0 : sura.length),
            ),
          ],
        ),
      ),
    );
  }

  String aldinkSuraNameText = "";
  ayaW(item) {
    bool isShowug = true;
    if (aldinkSuraNameText == item['suraName']) {
      isShowug = false;
    } else {
      aldinkSuraNameText = item['suraName'];
      isShowug = true;
    }

    return Obx(() => Container(
          key: item["key"],
          color: item["isCheck"] ? q.theme.bgColor : q.theme.bgColor1,
          // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            children: [
              isShowug
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
              Container(
                height: 1,
                color: q.theme.bgColor3,
              ),
              TextButton(
                onPressed: () {
                  aldinkSuraNameText = "";
                  sura.forEach((element) {
                    element["isCheck"] = false;
                  });
                  setState(() {
                    item["isCheck"] = true;
                  });
                },
                style: q.theme.btnStyleAya,
                child: Container(
                  // color: q.red,
                  child: Column(
                    children: [
                      Container(
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
                            ),
                            'b': StyledTextTag(style: q.theme.titleQaR),
                          },
                          style: q.theme.titleQa,
                        ),
                      ),
                      q.muahhmadsalih.value || item['ug_text'].contains(search)
                          ? Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: double.infinity,
                                  child: StyledText(
                                      text: item['ug_text'],
                                      textAlign: TextAlign.justify,
                                      textDirection: q.theme.dir,
                                      tags: {
                                        'b': StyledTextTag(
                                            style: q.theme.textHeight20R),
                                      },
                                      style: q.theme.textHeight20),
                                ),
                                q.hayattarjimisi.value ||
                                        q.aalimTarjimiai.value ||
                                        q.yusupmuhahmadtarjimisi.value ||
                                        item['heyet_text'].contains(search) ||
                                        item['eaoglu_text'].contains(search) ||
                                        item['myusuf_text'].contains(search)
                                    ? tarjimaSizik(item["aya"].toString(),
                                        q.resources.muahhmadsalihMidel, item)
                                    : Container()
                              ],
                            )
                          : Container(),
                      q.hayattarjimisi.value ||
                              item['heyet_text'].contains(search)
                          ? Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: double.infinity,
                                  child: StyledText(
                                      text: item['heyet_text'],
                                      textAlign: TextAlign.justify,
                                      textDirection: q.theme.dir,
                                      tags: {
                                        'b': StyledTextTag(
                                          style: q.theme.textHeight20R,
                                        )
                                      },
                                      style: q.theme.textHeight20),
                                ),
                                tarjimaSizik(item["aya"].toString(),
                                    q.resources.hayattarjimisiMidel, item)
                              ],
                            )
                          : Container(),
                      q.aalimTarjimiai.value ||
                              item['eaoglu_text'].contains(search)
                          ? Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: double.infinity,
                                  child: StyledText(
                                    text: item['eaoglu_text'],
                                    textAlign: TextAlign.justify,
                                    textDirection: q.theme.dir,
                                    tags: {
                                      'b': StyledTextTag(
                                        style: q.theme.textHeight20R,
                                      )
                                    },
                                    style: q.theme.textHeight20,
                                  ),
                                ),
                                tarjimaSizik(item["aya"].toString(),
                                    q.resources.aalimTarjimiaiMidel, item)
                              ],
                            )
                          : Container(),
                      q.yusupmuhahmadtarjimisi.value ||
                              item['myusuf_text'].contains(search)
                          ? Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: double.infinity,
                                  child: StyledText(
                                      text: item['myusuf_text'],
                                      textAlign: TextAlign.justify,
                                      textDirection: q.theme.dir,
                                      tags: {
                                        'b': StyledTextTag(
                                          style: q.theme.textHeight20R,
                                        )
                                      },
                                      style: q.theme.textHeight20),
                                ),
                                tarjimaSizik(
                                    item["aya"].toString(),
                                    q.resources.yusupmuhahmadtarjimisiMidel,
                                    item)
                              ],
                            )
                          : Container(),
                      q.showTarjimaHanyu.value ||
                              item['ch_text'].contains(search)
                          ? Container(
                              margin: EdgeInsets.all(10),
                              width: double.infinity,
                              child: StyledText(
                                text: item['ch_text'],
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.ltr,
                                tags: {
                                  'b': StyledTextTag(
                                      style: q.theme.textHeight20R),
                                },
                                style: q.theme.textHeight20,
                              ),
                            )
                          : Container(),
                      q.showTarjimaEnglish.value ||
                              item['en_text'].contains(search)
                          ? Container(
                              margin: EdgeInsets.all(10),
                              width: double.infinity,
                              child: StyledText(
                                text: item['en_text'],
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.ltr,
                                tags: {
                                  'b': StyledTextTag(
                                      style: q.theme.textHeight20R),
                                },
                                style: q.theme.textHeight20,
                              ),
                            )
                          : Container(),
                      q.showTarjimaTurky.value ||
                              item['tr_text'].contains(search)
                          ? Container(
                              margin: EdgeInsets.all(10),
                              width: double.infinity,
                              child: StyledText(
                                text: item['tr_text'],
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.ltr,
                                tags: {
                                  'b': StyledTextTag(
                                      style: q.theme.textHeight20R),
                                },
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
                    q.gotoSura(item["sid"], item["aya"]);
                  },
                  child: Icon(
                    Icons.open_in_browser,
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
              ],
            ),
          )
        : Container(
            height: 0,
          );
  }

  ibnikasir() {
    return Container(
      decoration: BoxDecoration(
          color: q.theme.bgColor1,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: EdgeInsets.all(10),
      child: Container(
        color: q.theme.bgColor1,
        margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
        child: Column(
          children: [
            Container(
              height: 30,
              child: Text(
                _elements == null
                    ? ""
                    : _elements.length == 0
                        ? !isStartSearch
                            ? qekit3
                            : loading
                                ? "0 ${q.resources.naqijaTepildi}"
                                : qekit3
                        : "${_elements.length} ${q.resources.naqijaTepildi}",
                textDirection: q.theme.dir,
                style: q.theme.textStyle,
              ),
            ),
            Expanded(
              child: GroupedListView<dynamic, String>(
                controller: ibniSccontroller,
                elements: _elements,
                groupBy: (element) => element['group'],
                groupComparator: (value1, value2) => value2.compareTo(value1),
                itemComparator: (item1, item2) =>
                    item1['title'].compareTo(item2['title']),
                sort: false,
                useStickyGroupSeparators: true,
                groupSeparatorBuilder: (String group) => Container(
                    height: 30,
                    // margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: q.theme.bgColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    alignment: Alignment.center,
                    child: StyledText(
                      text: group,
                      textAlign: TextAlign.justify,
                      style: q.theme.title6,
                      textDirection: TextDirection.rtl,
                      tags: {
                        'b': StyledTextTag(
                            style: q.theme.title6.apply(
                                fontFamily: q.arabicfontFamily.value,
                                fontSizeDelta:
                                    q.arabicFontSize.value.toDouble())),
                      },
                    )),
                itemBuilder: (c, element) {
                  return ibniTitleW(element);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  ibniTitleW(item) {
    return TextButton(
      onPressed: () {
        openPage(item["id"]);
      },
      style: q.theme.btnStyleAya,
      child: Container(
        margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
        child: Column(
          children: [
            item[0] != 1
                ? Container(
                    height: 2,
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    color: q.theme.bgColor3,
                  )
                : Container(),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: StyledText(
                text: item["title"],
                textAlign: TextAlign.justify,
                style: q.theme.title1,
                textDirection: TextDirection.rtl,
                tags: {
                  'b': StyledTextTag(
                    style: q.theme.textHeight20R,
                  ),
                  'span': StyledTextTag(style: q.theme.textHeight20),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  openPage(id) async {
    await q.favIbni.init();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QIbniTapPage(id, searchWord: search),
      ),
    );
  }

  muyassarW() {
    adinkiMuyassarSuraName = "";
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      alignment: Alignment.center,
      // height: 50,
      decoration: BoxDecoration(
        color: q.theme.bgColor1,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(10),
      child: Container(
        color: q.theme.bgColor1,
        child: Column(
          children: [
            Container(
              height: 30,
              child: Text(
                muyassar == null
                    ? ""
                    : muyassar.length == 0
                        ? !isStartSearch
                            ? qekit3
                            : loading
                                ? "0 ${q.resources.naqijaTepildi}"
                                : qekit3
                        : "${muyassar.length} ${q.resources.naqijaTepildi}",
                textDirection: q.theme.dir,
                style: q.theme.textStyle,
              ),
            ),
            Expanded(
              child: new ListView.builder(
                  controller: muyassarSccontroller,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return muyassarWI(muyassar[index]);
                  },
                  itemCount: muyassar == null ? 0 : muyassar.length),
            ),
          ],
        ),
      ),
    );
  }

  String adinkiMuyassarSuraName = '';
  muyassarWI(item) {
    String sn = sura114[item["sura"] - 1]["n"];
    bool isShowSuraName = false;
    if (adinkiMuyassarSuraName != sn) {
      adinkiMuyassarSuraName = sn;
      isShowSuraName = true;
    }
    return Column(
      children: [
        isShowSuraName
            ? Container(
                color: q.theme.bgColor1,
                margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: q.theme.bgColor3,
                  alignment: Alignment.center,
                  child: Text(
                    '﴿ ${item["sura"]}. $adinkiMuyassarSuraName ﴾',
                    textDirection: TextDirection.rtl,
                    style: q.theme.title5a,
                  ),
                ))
            : Container(),
        Container(
          color: q.theme.bgColor1,
          margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
          child: ayaWM(item),
        ),
        Container(
          color: q.theme.bgColor1,
          margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
          child: tapW(item),
        ),
        Container(
          height: 2,
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          color: q.theme.bgColor3,
        ),
        Container(
          color: q.theme.bgColor1,
          margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
          child: tapArW(item),
        ),
      ],
    );
  }

  ayaWM(item) {
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
      child: StyledText(
        text: item == null ? "" : item['ug_muyassar'],
        textAlign: TextAlign.justify,
        textDirection: q.theme.dir,
        tags: {
          'b': StyledTextTag(style: q.theme.textHeight20R),
        },
        style: q.theme.textHeight20,
      ),
    );
  }

  tapArW(item) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: StyledText(
        text: item == null ? "" : item['ar_muyassar'],
        textAlign: TextAlign.justify,
        textDirection: q.theme.dir,
        tags: {
          'b': StyledTextTag(style: q.theme.titleQaR),
        },
        style: q.theme.titleQaT,
      ),
    );
  }

  zarifW() {
    adinkizarifSuraName = "";
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      alignment: Alignment.center,
      // height: 50,
      decoration: BoxDecoration(
        color: q.theme.bgColor1,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(10),
      child: Container(
        color: q.theme.bgColor1,
        child: Column(
          children: [
            Container(
              height: 30,
              child: Text(
                zarif == null
                    ? ""
                    : zarif.length == 0
                        ? !isStartSearch
                            ? qekit3
                            : loading
                                ? "0 ${q.resources.naqijaTepildi}"
                                : qekit3
                        : "${zarif.length} ${q.resources.naqijaTepildi}",
                textDirection: q.theme.dir,
                style: q.theme.textStyle,
              ),
            ),
            Expanded(
              child: new ListView.builder(
                  controller: zarifSccontroller,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return zarifWI(zarif[index]);
                  },
                  itemCount: zarif == null ? 0 : zarif.length),
            ),
          ],
        ),
      ),
    );
  }

  String adinkizarifSuraName = '';
  zarifWI(item) {
    String sn = sura114[item["sura"] - 1]["n"];
    bool isShowSuraName = false;
    if (adinkizarifSuraName != sn) {
      adinkizarifSuraName = sn;
      isShowSuraName = true;
    }
    return Column(
      children: [
        isShowSuraName
            ? Container(
                color: q.theme.bgColor1,
                margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: q.theme.bgColor3,
                  alignment: Alignment.center,
                  child: Text(
                    '﴿ ${item["sura"]}. $adinkizarifSuraName ﴾',
                    textDirection: TextDirection.rtl,
                    style: q.theme.title5a,
                  ),
                ))
            : Container(),
        Container(
          color: q.theme.bgColor1,
          margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
          child: ayaWM(item),
        ),
        Container(
          color: q.theme.bgColor1,
          margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
          child: tapzW(item),
        ),
      ],
    );
  }

  tapzW(item) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: StyledText(
        text: item == null ? "" : item['ug_zarif'],
        textAlign: TextAlign.justify,
        textDirection: q.theme.dir,
        tags: {
          'b': StyledTextTag(style: q.theme.textHeight20R),
        },
        style: q.theme.textHeight20,
      ),
    );
  }

  jalaleinW() {
    adinkijalaleinSuraName = '';
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      alignment: Alignment.center,
      // height: 50,
      decoration: BoxDecoration(
        color: q.theme.bgColor1,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(10),
      child: Container(
        color: q.theme.bgColor1,
        child: Column(
          children: [
            Container(
              height: 30,
              child: Text(
                jalalein == null
                    ? ""
                    : jalalein.length == 0
                        ? !isStartSearch
                            ? qekit3
                            : loading
                                ? "0 ${q.resources.naqijaTepildi}"
                                : qekit3
                        : "${jalalein.length} ${q.resources.naqijaTepildi}",
                textDirection: q.theme.dir,
                style: q.theme.textStyle,
              ),
            ),
            Expanded(
              child: new ListView.builder(
                  controller: jalaleinSccontroller,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return jalaleinWI(jalalein[index]);
                  },
                  itemCount: jalalein == null ? 0 : jalalein.length),
            ),
          ],
        ),
      ),
    );
  }

  String adinkijalaleinSuraName = '';
  jalaleinWI(item) {
    String sn = sura114[item["sura"] - 1]["n"];
    bool isShowSuraName = false;
    if (adinkijalaleinSuraName != sn) {
      adinkijalaleinSuraName = sn;
      isShowSuraName = true;
    }
    return Column(
      children: [
        isShowSuraName
            ? Container(
                color: q.theme.bgColor1,
                margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: q.theme.bgColor3,
                  alignment: Alignment.center,
                  child: Text(
                    '﴿ ${item["sura"]}. $adinkijalaleinSuraName ﴾',
                    textDirection: TextDirection.rtl,
                    style: q.theme.title5a,
                  ),
                ))
            : Container(),
        Container(
          color: q.theme.bgColor1,
          margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
          child: ayaWj(item),
        ),
      ],
    );
  }

  ayaWj(item) {
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
                child: StyledText(
                  text: item == null ? "" : item['ar_jalalein'],
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  tags: {
                    'b': StyledTextTag(style: q.theme.titleQaR),
                  },
                  style: q.theme.titleQaT,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  mukhtasarW() {
    adinkimukhtasarSuraName = '';
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      alignment: Alignment.center,
      // height: 50,
      decoration: BoxDecoration(
        color: q.theme.bgColor1,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(10),
      child: Container(
        color: q.theme.bgColor1,
        child: Column(
          children: [
            Container(
              height: 30,
              child: Text(
                mukhtasar == null
                    ? ""
                    : mukhtasar.length == 0
                        ? !isStartSearch
                            ? qekit3
                            : loading
                                ? "0 ${q.resources.naqijaTepildi}"
                                : qekit3
                        : "${mukhtasar.length} ${q.resources.naqijaTepildi}",
                textDirection: q.theme.dir,
                style: q.theme.textStyle,
              ),
            ),
            Expanded(
              child: new ListView.builder(
                  controller: mukhtasarSccontroller,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return mukhtasarWI(mukhtasar[index]);
                  },
                  itemCount: mukhtasar == null ? 0 : mukhtasar.length),
            ),
          ],
        ),
      ),
    );
  }

  String adinkimukhtasarSuraName = '';
  mukhtasarWI(item) {
    String sn = sura114[item["sura"] - 1]["n"];
    bool isShowSuraName = false;
    if (adinkimukhtasarSuraName != sn) {
      adinkimukhtasarSuraName = sn;
      isShowSuraName = true;
    }
    return Column(
      children: [
        isShowSuraName
            ? Container(
                color: q.theme.bgColor1,
                margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: q.theme.bgColor3,
                  alignment: Alignment.center,
                  child: Text(
                    '﴿ ${item["sura"]}. $adinkimukhtasarSuraName ﴾',
                    textDirection: TextDirection.rtl,
                    style: q.theme.title5a,
                  ),
                ))
            : Container(),
        Container(
          color: q.theme.bgColor1,
          margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
          child: ayaWm(item),
        ),
      ],
    );
  }

  ayaWm(item) {
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
                child: StyledText(
                  text: item == null ? "" : item['ar_text'],
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  tags: {
                    'b': StyledTextTag(style: q.theme.titleQaR),
                  },
                  style: q.theme.titleQaT,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                child: StyledText(
                  text: item['cn_text'],
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.ltr,
                  tags: {
                    'b': StyledTextTag(style: q.theme.textHeight20R),
                  },
                  style: q.theme.textHeight20,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                child: StyledText(
                  text: item['tr_text'],
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.ltr,
                  tags: {
                    'b': StyledTextTag(style: q.theme.textHeight20R),
                  },
                  style: q.theme.textHeight20,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                child: StyledText(
                  text: item['en_text'],
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.ltr,
                  tags: {
                    'b': StyledTextTag(style: q.theme.textHeight20R),
                  },
                  style: q.theme.textHeight20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  dua() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      alignment: Alignment.center,
      // height: 50,
      decoration: BoxDecoration(
        color: q.theme.bgColor1,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(10),
      child: Container(
        color: q.theme.bgColor1,
        child: Column(
          children: [
            Container(
              height: 30,
              child: Text(
                duatItems == null
                    ? ""
                    : duatItems.length == 0
                        ? !isStartSearch
                            ? qekit3
                            : loading
                                ? "0 ${q.resources.naqijaTepildi}"
                                : qekit3
                        : "${duatItems.length} ${q.resources.naqijaTepildi}",
                textDirection: q.theme.dir,
                style: q.theme.textStyle,
              ),
            ),
            Expanded(
              child: new ListView.builder(
                  controller: ibniSccontroller,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return titleW(duatItems[index], index);
                  },
                  itemCount: duatItems == null ? 0 : duatItems.length),
            ),
          ],
        ),
      ),
    );
  }

  titleW(item, index) {
    return TextButton(
      onPressed: () {
        goDua(item["id"]);
      },
      style: q.theme.btnStyleAya,
      child: Container(
        // margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            index != 0
                ? Container(
                    height: 2,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    color: q.theme.bgColor3,
                  )
                : Container(),
            Container(
              alignment: Alignment.centerRight,
              child: StyledText(
                text: item["id"] == 0 || item["id"] == 132
                    ? item["tema"]
                    : '${item["id"]}. ${item["tema"]}',
                // textAlign: TextAlign.right,
                textDirection: q.theme.dir,
                tags: {
                  'b': StyledTextTag(
                    style: q.theme.textHeight20R,
                  )
                },
                style: q.theme.textHeight20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  goDua(id) {
    Navigator.push(
      context,
      new MaterialPageRoute(
          builder: (context) => new DuaPageShow(id, searchWord: search)),
    );
  }
}
