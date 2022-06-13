import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'MyBackSetting.dart';
import 'Q.dart';
import 'QSPage.dart';

class QPage extends StatefulWidget {
  QPage({Key key}) : super(key: key);
  @override
  State<QPage> createState() => _QPageState();
}

class _QPageState extends State<QPage> {
  final q = Get.put(Q());
  List<Map> sura = [];

  @override
  void initState() {
    super.initState();

    load();
  }

  load() async {
    sura = await q.getSuraName();
    setState(() {});
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
                height: 80,
                child: Row(
                    textDirection: q.theme.dir,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: q.theme.bgColor1,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                        margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Center(
                          child: Text(
                            q.resources.sura,
                            style: q.theme.title4,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Center(
                            child: Text(
                          q.resources.mundarija,
                          style: q.theme.title3,
                          softWrap: false,
                        )),
                      )),
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: q.theme.bgColor1,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                        margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Center(
                            child: Text(
                          q.resources.para,
                          style: q.theme.title4,
                        )),
                      )
                    ]),
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Row(
                  textDirection: q.theme.dir,
                  children: [
                    Expanded(
                      child: Container(
                        color: q.theme.bgColor1,
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            reverse: false,
                            padding: EdgeInsets.all(0.0),
                            physics: BouncingScrollPhysics(),
                            child: Column(
                                children: sura
                                    .map((item) => Container(
                                          child: suraW(item),
                                        ))
                                    .toList())),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: q.theme.bgColor1,
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            reverse: false,
                            padding: EdgeInsets.all(0.0),
                            physics: BouncingScrollPhysics(),
                            child: Column(
                                children: q.para
                                    .map((item) => Container(
                                          child: paraW(item),
                                        ))
                                    .toList())),
                      ),
                    )
                  ],
                ),
              )),
              Container(
                height: 50,
                // margin: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  color: q.theme.bgColor1,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          gotoSura(-1);
                        },
                        child: Icon(
                          Icons.book_rounded,
                          color: q.theme.btnColor,
                        )),
                    TextButton(
                        onPressed: () {
                          q.goSearch();
                        },
                        child: Icon(
                          Icons.search,
                          color: q.theme.btnColor,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  suraW(item) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
              gotoSura(item["id"]);
            },
            title: Center(
              child: Text(
                item["id"].toString() + '. ' + item['n'],
                textDirection: TextDirection.rtl,
                style: q.theme.title2a,
              ),
            ),
          ),
        ],
      ),
    );
  }

  paraW(item) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Column(
        children: [
          item[0] != 1
              ? Container(
                  height: 2,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  color: q.theme.bgColor3,
                )
              : Container(),
          ListTile(
            onTap: () {
              gotoPara(item[1], item[2]);
            },
            title: Center(
              child: Text(
                item[0].toString() + ". " + q.resources.para,
                textDirection: q.theme.dir,
                style: q.theme.title2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  gotoPara(int sid, int aya) {
    Navigator.push(
      context,
      new MaterialPageRoute(
          builder: (context) => new QSPage(sid, aya: aya, isOnePlay: false)),
    ).then((value) {
      if (value != null) {
        if (value == "next") {
          gotoSura(sid + 1);
        }
      }
    });
  }

  gotoSura(id) {
    Navigator.push(
      context,
      new MaterialPageRoute(
          builder: (context) => new QSPage(id, isOnePlay: false)),
    ).then((value) {
      if (value != null) {
        if (value == "next") {
          gotoSura(id + 1);
        }
      }
    });
  }
}
