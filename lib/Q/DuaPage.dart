import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'DuaPageShow.dart';
import 'MyBackSetting.dart';
import 'Q.dart';

class DuaPage extends StatefulWidget {
  DuaPage({Key key}) : super(key: key);
  @override
  State<DuaPage> createState() => _DuaPageState();
}

class _DuaPageState extends State<DuaPage> {
  final q = Get.put(Q());
  final searchcontroller = TextEditingController();
  FocusNode searchFocusNode = FocusNode();
  int itemCount = 0;
  String search = "";
  List tItems = [];
  List searchtItems = [];
  bool loading;

  @override
  void initState() {
    super.initState();
    load();
  }

  load() async {
    if (loading == false) {
      return;
    }

    List<Map> j = await q.sql.select("select id,tema FROM a_Dua");

    tItems.clear();
    j.forEach((e) {
      tItems.add({"id": e["id"], "tema": e["tema"]});
    });

    goSearch();
    setState(() {
      loading = true;
    });
  }

  goSearch() {
    String s = search.trim();

    List _search = [];
    if (s == "") {
      _search = tItems;
    } else {
      tItems.forEach((e) {
        bool isS = false;
        Map m = e;
        m.forEach((key, value) {
          if (value.toString().contains(s)) {
            isS = true;
          }
        });
        if (isS) {
          _search.add(e);
        }
      });
    }

    setState(() {
      searchtItems = _search;
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
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: q.theme.bgColor1,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
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
                      onTap: () {
                        searchcontroller.selection = TextSelection(
                            baseOffset: 0,
                            extentOffset: searchcontroller.text.length);
                      },
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
                        goSearch();
                      },
                    ),
                  )),
              Expanded(
                  child: Container(
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
                  child: new ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return titleW(searchtItems[index], index);
                      },
                      itemCount:
                          searchtItems == null ? 0 : searchtItems.length),
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
                    IconButton(
                        onPressed: () {
                          go(-1);
                        },
                        icon: Icon(
                          Icons.bookmarks_rounded,
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
                    TextButton(
                        onPressed: () {
                          go(0);
                        },
                        child: Icon(
                          Icons.info_outline_rounded,
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

  titleW(item, index) {
    return TextButton(
      onPressed: () {
        go(item["id"]);
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
              // margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
              // color: q.red,
              child: Text(
                item["id"] == 0 || item["id"] == 132
                    ? item["tema"]
                    : '${item["id"]}. ${item["tema"]}',
                textAlign: TextAlign.right,
                style: q.theme.textHeight20,
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
      ),
    );
  }

  go(id) {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new DuaPageShow(id)),
    );
  }
}
