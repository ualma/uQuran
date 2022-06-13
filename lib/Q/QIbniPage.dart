import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:styled_text/styled_text.dart';
import 'MyBackSetting.dart';
import 'Q.dart';
import 'QIbniTapPage.dart';

class QIbniPage extends StatefulWidget {
  QIbniPage({Key key}) : super(key: key);
  @override
  State<QIbniPage> createState() => _QIbniPageState();
}

class _QIbniPageState extends State<QIbniPage> with TickerProviderStateMixin {
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
    await q.favIbni.init();
    inSQL = "";
    inSQLsura = "";
    if (isFav) {
      q.favIbni.qFavIbni.forEach((element) {
        inSQL += '$element,';
      });
      if (inSQL.length > 0) {
        inSQL = " where id in(${inSQL.substring(0, inSQL.length - 1)}) ";
        inSQLsura = " where id in(SELECT sura FROM a_ibnikasir $inSQL) ";
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

    List<Map> r = await q.sql.select(
        'SELECT id,aya,ayaMax,title FROM a_ibnikasir where sura=$sid $inSQL');
    r.forEach((element) {
      if (element["aya"] == element["ayaMax"]) {
        _elements.add({
          "id": element["id"],
          "group":
              "${element["aya"].toString().padLeft(6)}- ${q.resources.ayat}",
          "title": element["title"]
        });
      } else {
        _elements.add({
          "id": element["id"],
          "group":
              "${element["aya"].toString().padLeft(3)}-${element["ayaMax"].toString().padLeft(3)} ${q.resources.ayat}",
          "title": element["title"]
        });
      }
    });
    setState(() {});
    sccontroller.animateTo(-10,
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
                  q.resources.ibnikasir,
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
                    child: GroupedListView<dynamic, String>(
                      controller: sccontroller,
                      elements: _elements,
                      groupBy: (element) => element['group'],
                      groupComparator: (value1, value2) =>
                          value2.compareTo(value1),
                      itemComparator: (item1, item2) =>
                          item1['title'].compareTo(item2['title']),
                      sort: false,
                      useStickyGroupSeparators: true,
                      groupSeparatorBuilder: (String value) => Container(
                          height: 30,
                          // margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            color: q.theme.bgColor,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            value,
                            textDirection: q.theme.dir,
                            style: q.theme.title6,
                          )),
                      itemBuilder: (c, element) {
                        return titleW(element);
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
                          int sid =
                              await q.setting.getSettingInt("ibniCPage", 0);
                          if (sid == 0) {
                            q.toast(q.resources.saklanganorunyok);
                          } else {
                            openPage(sid);
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

  titleW(item) {
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
                    style: q.theme.title1Bold,
                  ),
                  'span': StyledTextTag(style: q.theme.title1),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  openPage(id) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QIbniTapPage(id),
      ),
    );
  }
}
