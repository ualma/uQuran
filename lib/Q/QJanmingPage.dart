import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'QJanmingTapPage.dart';
import 'MyBackSetting.dart';
import 'Q.dart';

class QJanmingPage extends StatefulWidget {
  QJanmingPage({Key key}) : super(key: key);
  @override
  State<QJanmingPage> createState() => _QJanmingPageState();
}

class _QJanmingPageState extends State<QJanmingPage>
    with TickerProviderStateMixin {
  final q = Get.put(Q());
  TabController _tabController;
  final sccontroller = ScrollController();
  List<Map> sura = [];
  int suraIndex = 0;
  List _elements = [];
  bool isFav = false;
  String inSQL = '';
  String inSQLsura = '';

  @override
  void initState() {
    super.initState();
    load();
  }

  load() async {
    await q.favJianming.init();
    inSQL = "";
    inSQLsura = "";
    if (isFav) {
      q.favJianming.qFavJianming.forEach((element) {
        inSQL += '$element,';
      });
      if (inSQL.length > 0) {
        inSQL = " where id in(${inSQL.substring(0, inSQL.length - 1)}) ";
        inSQLsura = " where id in(SELECT sura_id FROM h_ranges $inSQL) ";
      } else {
        isFav = false;
        q.toast(q.resources.saklangalaryok);
      }
    }
    sura.clear();
    List<Map> r = await q.sql
        .select('select id,n from q_sura $inSQLsura order by id desc');
    r.forEach((element) {
      sura.add({"id": element["id"], "n": element["n"]});
    });
    suraIndex = sura.length - 1;
    if (_tabController != null) {
      _tabController.dispose();
    }
    _tabController = TabController(length: sura.length, vsync: this);
    Future.delayed(Duration(milliseconds: 500), () {
      _tabController.index = suraIndex;
      _tabController.animateTo(suraIndex,
          duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    });

    await upadateAyaList();
  }

  upadateAyaList() async {
    _elements.clear();
    if (inSQL.length > 0) {
      inSQL = inSQL.replaceAll('where', 'and');
    }

    int sid = sura[suraIndex]["id"];

    Map suraInfo = await q.sql
        .selectOne("select title from h_introductions where sura_id=$sid");
    if (!isFav) {
      _elements.add({"id": 0, "group": "导 言", "title": suraInfo["title"]});
    }

    List<Map> r = await q.sql.select(
        'SELECT id,index_from as aya,index_to as ayaMax,(select ayas_subject from h_language_range where range_id=h_ranges.id) as title FROM h_ranges where sura_id=$sid $inSQL');
    r.forEach((element) {
      if (element["aya"] == element["ayaMax"]) {
        _elements.add({
          "id": element["id"],
          "group": "[${element["aya"].toString().padLeft(6)}]",
          "title": element["title"].toString().replaceAll("<br />", " ")
        });
      } else {
        _elements.add({
          "id": element["id"],
          "group":
              "[${element["aya"].toString().padLeft(3)}-${element["ayaMax"].toString().padLeft(3)}]",
          "title": element["title"].toString().replaceAll("<br />", " ")
        });
      }
    });
    setState(() {});
    sccontroller.animateTo(0,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
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
                  q.resources.hanzuqatapsir,
                  style: q.theme.title3,
                  softWrap: false,
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                            suraIndex = index;
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
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: q.theme.bgColor1,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin: EdgeInsets.all(10),
                  child: Container(
                    color: q.theme.bgColor1,
                    margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                    child: ListView.builder(
                      controller: sccontroller,
                      itemCount: _elements.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            print(_elements[index]["id"]);
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new QJanmingTapPage(
                                      sura[suraIndex]["id"],
                                      _elements[index]["id"])),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                            decoration: BoxDecoration(
                                color: q.theme.bgColor1,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                )),
                            child: ListTile(
                              title: Text(
                                '${_elements[index]["title"]} ${_elements[index]["group"]}',
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.justify,
                                style: q.theme.textHeight20,
                              ),
                            ),
                          ),
                        );
                      },
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
                    IconButton(
                        onPressed: () {
                          isFav = true;
                          load();
                        },
                        icon: Icon(
                          Icons.book_rounded,
                          color: isFav ? q.theme.btnColor : q.theme.textColor2,
                        )),
                    IconButton(
                        onPressed: () {
                          isFav = false;
                          load();
                        },
                        icon: Icon(
                          Icons.local_library_rounded,
                          color: !isFav ? q.theme.btnColor : q.theme.textColor2,
                        )),
                    IconButton(
                        onPressed: () async {
                          int id =
                              await q.setting.getSettingInt("JianmingCPage", 0);
                          if (id == 0) {
                            q.toast(q.resources.saklanganorunyok);
                          } else {
                            int sid = await q.sql.selectValue(
                                'select sura_id from h_ranges where id=$id');
                            openPage(sid, id);
                          }
                        },
                        icon: Icon(
                          Icons.menu_open_rounded,
                          color: q.theme.btnColor,
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  openPage(sid, id) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QJanmingTapPage(sid, id),
      ),
    );
  }
}
