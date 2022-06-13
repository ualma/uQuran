import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_text/styled_text.dart';
import 'MyBackSetting.dart';
import 'Q.dart';
import 'QTFav.dart';

class DuaPageShow extends StatefulWidget {
  DuaPageShow(this.id, {Key key, this.searchWord = ''}) : super(key: key);
  final int id;
  final String searchWord;
  @override
  State<DuaPageShow> createState() => _DuaPageShowState();
}

class _DuaPageShowState extends State<DuaPageShow>
    with TickerProviderStateMixin {
  final q = Get.put(Q());
  final qTFav = Get.put(QTFav());
  final sccontroller = ScrollController();
  bool isLoad = false;
  int id = 0;
  List<Map> dua = [];

  @override
  void initState() {
    id = widget.id;
    super.initState();
    print("searchWord: ${widget.searchWord}");
    load();
  }

  load() async {
    await q.favDua.init();
    upadateAyaList();
  }

  upadateAyaList() async {
    String sql = "";
    String ids = "";
    if (id == -1) {
      q.favDua.qFavDua.forEach((element) {
        ids += " or a_Dua_rs.id = $element";
      });
      if (ids.length > 0) {
        ids = ids.substring(4);
      }
      sql =
          "SELECT a_Dua.id, a_Dua.tema, a_Dua_rs.id as did, a_Dua_rs.text_a, a_Dua_rs.text_u FROM a_Dua INNER JOIN a_Dua_rs ON a_Dua.id = a_Dua_rs.tartip WHERE $ids";
    } else {
      sql =
          "SELECT a_Dua.id, a_Dua.tema, a_Dua_rs.id as did, a_Dua_rs.text_a, a_Dua_rs.text_u FROM a_Dua INNER JOIN a_Dua_rs ON a_Dua.id = a_Dua_rs.tartip WHERE a_Dua.id = $id";
    }
    dua.clear();
    if (ids != "" || id != -1) {
      List<Map> r = await q.sql.select(sql);
      for (int i = 0; i < r.length; i++) {
        int did = r[i]["did"];
        bool fav = q.favDua.isQFavDua(did);
        dua.add({
          "did": did,
          "tema": q.getRedColor(r[i]["tema"], widget.searchWord),
          "text_a": q.getRedColor(r[i]["text_a"], widget.searchWord),
          "text_u": q.getRedColor(r[i]["text_u"], widget.searchWord),
          "fav": fav
        });
      }
    }
    isLoad = true;
    setState(() {});
    if (sccontroller.hasClients) {
      sccontroller.animateTo(0,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    }
  }

  next() async {
    if (id == 132) {
      q.toast(q.resources.buangahirkisi);
    } else {
      id = await q.sql.selectValue(
          "select id from a_Dua where id > $id order by id asc limit 1");
      await upadateAyaList();
    }
  }

  before() async {
    if (id == 0) {
      q.toast(q.resources.buangaldinkisi);
    } else {
      id = await q.sql.selectValue(
          "select id from a_Dua where id < $id order by id desc limit 1");

      await upadateAyaList();
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
                setState(() {});
              }),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                padding: EdgeInsets.all(10),
                // height: 50,
                decoration: BoxDecoration(
                  color: q.theme.bgColor1,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: isLoad
                    ? StyledText(
                        text: widget.id == -1
                            ? q.resources.sakliwalganlar
                            : dua[0]["tema"],
                        textAlign: TextAlign.center,
                        textDirection: q.theme.dir,
                        tags: {
                          'b': StyledTextTag(
                              style: q.theme.title1.apply(color: q.theme.red)),
                        },
                        style: q.theme.title1,
                      )
                    : Container(),
              ),
              Expanded(
                child: isLoad
                    ? Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: new ListView.builder(
                            controller: sccontroller,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return duaW(dua[index]);
                            },
                            itemCount: dua == null ? 0 : dua.length),
                      )
                    : Container(),
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
                    widget.id != -1
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
                        : Container(),
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
                    widget.id != -1
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
                        : Container()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  duaW(item) {
    return Container(
        decoration: BoxDecoration(
            color: q.theme.bgColor1,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            id == -1
                ? Container(
                    margin: EdgeInsets.all(10),
                    color: q.theme.bgColor1,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: StyledText(
                            text: item["id"] == 0 || item["id"] == 132
                                ? item["tema"]
                                : '${item["did"]}. ${item["tema"]}',
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.rtl,
                            tags: {
                              'b': StyledTextTag(style: q.theme.textHeight20R),
                            },
                            style: q.theme.textHeight20,
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),
            item['text_a'] != ""
                ? Container(
                    margin: EdgeInsets.all(2),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: q.theme.bgColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: StyledText(
                        text: item['text_a'],
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.rtl,
                        tags: {
                          'b': StyledTextTag(style: q.theme.titleQaR),
                        },
                        style: q.theme.titleQa))
                : Container(),
            Container(
              margin: EdgeInsets.all(10),
              color: q.theme.bgColor1,
              child: Column(
                textDirection: q.theme.dir,
                children: [
                  Container(
                    width: double.infinity,
                    child: StyledText(
                      text: item['text_u'],
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                      tags: {
                        'b': StyledTextTag(style: q.theme.textHeight20R),
                      },
                      style: q.theme.textHeight20,
                    ),
                  ),
                  item['text_a'] != ""
                      ? Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    item["fav"] = !item["fav"];
                                  });
                                  if (!item["fav"]) {
                                    q.favDua.removeQFavDua(item["did"]);
                                  } else {
                                    q.favDua.addQFavDua(item["did"]);
                                  }
                                },
                                icon: Icon(
                                  Icons.book_rounded,
                                  color: item["fav"]
                                      ? q.theme.btnColor
                                      : q.theme.textColor2,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  String s = "";
                                  if (item["text_a"] != "") {
                                    s += item["text_a"] + "\n";
                                  }
                                  if (item["text_u"] != "") {
                                    s += " " + item["text_u"] + "\n";
                                  }
                                  q.copyText(s);
                                },
                                child: Icon(
                                  Icons.copy_rounded,
                                  color: q.theme.btnColor,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ],
        ));
  }
}
