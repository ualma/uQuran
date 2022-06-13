import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_text/styled_text.dart';
import 'MyBackSetting.dart';
import 'Q.dart';

class DicHarifSPage extends StatefulWidget {
  DicHarifSPage(this.id, {Key key}) : super(key: key);
  final int id;
  @override
  State<DicHarifSPage> createState() => _DicHarifSPageState();
}

class _DicHarifSPageState extends State<DicHarifSPage> {
  final q = Get.put(Q());
  final searchcontroller = TextEditingController();
  FocusNode searchFocusNode = FocusNode();
  String search = "";
  List searchtItems = [];
  List tItems = [];
  bool loading = false;
  bool keyboad = false;
  List<String> harif = [];
  @override
  void initState() {
    super.initState();
    load();
  }

  load() async {
    if (loading) {
      return;
    }
    setState(() {
      loading = true;
    });
    tItems.clear();
    String sql =
        "SELECT id,aword,b_i_aword,ugword FROM a_AR_UY where Sozid=0 and h_id=${widget.id}";
    sql += " order by id";

    List<Map> list = await q.sql.select(sql);
    list.forEach((e) {
      tItems.add({
        "id": e["id"],
        "b_i_aword": e["b_i_aword"],
        "aword": e["aword"],
        "ugword": e["ugword"]
      });
    });
    loading = false;
    setState(() {});
    goSearch();
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
    double hei = harif.length / (MediaQuery.of(context).size.width / 50);
    int i = hei.toInt();
    hei = hei * 50;
    if (hei - i > 0) {
      hei += 50;
    }
    hei += 30;
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
                    width: double.infinity,
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Container(
                          padding: q.theme.uFontPadding,
                          child: Text(
                            q.resources.logat,
                            textDirection: q.theme.dir,
                            style: q.theme.title1,
                          ),
                        ),
                        Container(
                            width: 30,
                            child: Icon(
                              Icons.format_textdirection_r_to_l_rounded,
                              color: q.theme.textColor1,
                            )),
                        Expanded(
                          child: Container(
                            height: 40,
                            child: TextField(
                              controller: searchcontroller,
                              style: q.theme.titleQaT,
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
                                goSearch();
                              },
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                              onPressed: () {
                                if (harif.length == 0) {
                                  for (int i = 0; i < q.harif.length; i++) {
                                    harif.add(q.harif[i]);
                                  }
                                  harif.add("ء");
                                  harif.add("ة");
                                  harif.add("ى");
                                }
                                setState(() {
                                  keyboad = !keyboad;
                                });
                              },
                              child: Icon(
                                !keyboad
                                    ? Icons.keyboard_alt_rounded
                                    : Icons.keyboard_hide_rounded,
                                color: q.theme.btnColor,
                              )),
                        ),
                      ],
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
                        return soz(searchtItems[index], index);
                      },
                      itemCount:
                          searchtItems == null ? 0 : searchtItems.length),
                ),
              )),
              keyboad
                  ? Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      alignment: Alignment.center,
                      height: hei,
                      decoration: BoxDecoration(
                        color: q.theme.bgColor1,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Wrap(
                          spacing: 5,
                          runSpacing: 5,
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.spaceBetween,
                          textDirection: TextDirection.rtl,
                          children: getKeyboard(),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  soz(dynamic w, int index) {
    return Column(
      textDirection: TextDirection.rtl,
      children: [
        index != 0
            ? Container(
                height: 2,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                color: q.theme.bgColor3,
              )
            : Container(),
        TextButton(
          onPressed: () {
            go(w["id"]);
          },
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  width: double.infinity,
                  child: StyledText(
                    text: "<s>${w["aword"]}</s>",
                    textAlign: TextAlign.justify,
                    textDirection: TextDirection.rtl,
                    tags: {
                      's': StyledTextTag(
                        style: q.theme.titleQaT,
                      )
                    },
                    style: q.theme.titleQa,
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                    w["ugword"],
                    style: q.theme.title1,
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  go(int id) async {
    List<Map> r = await q.sql.select(
        "SELECT aword,ugword FROM a_AR_UY where id=$id or Sozid=$id order by id,aword");
    List ws = [];
    for (int i = 0; i < r.length; i++) {
      var element = r[i];
      ws.add(element);
    }
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            content: Container(
                // height: 280,
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              reverse: false,
              padding: EdgeInsets.all(0.0),
              physics: BouncingScrollPhysics(),
              child: Column(
                  textDirection: TextDirection.ltr,
                  children: ws
                      .map(
                        (w) => TextButton(
                          onPressed: () {
                            q.copyText("${w["aword"]}\n${w["ugword"]}");
                          },
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.centerRight,
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerRight,
                                  width: double.infinity,
                                  child: Text(
                                    "${w["aword"]}",
                                    style: q.theme.titleQa,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  width: double.infinity,
                                  child: Text(
                                    w["ugword"],
                                    style: q.theme.title1,
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList()),
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
        });
  }

  getKeyboard() {
    List<Widget> items = [];
    harif.forEach((item) {
      items.add(InkWell(
        onTap: () {
          searchcontroller.text += item;
          search = searchcontroller.text;
          goSearch();
          searchFocusNode.unfocus();
          // searchcontroller.selection =
          //     TextSelection(baseOffset: -1, extentOffset: -1);
        },
        child: Container(
          width: 45,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: q.theme.bgColor,
          ),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            item,
            style: q.theme.title1a,
            textAlign: TextAlign.center,
          ),
        ),
      ));
    });
    items.add(InkWell(
      onTap: () {
        if (searchcontroller.text.length > 0) {
          searchcontroller.text = searchcontroller.text
              .substring(0, searchcontroller.text.length - 1);
          search = searchcontroller.text;
          goSearch();
          searchFocusNode.unfocus();
          // searchcontroller.selection =
          //     TextSelection(baseOffset: -1, extentOffset: -1);
        }
      },
      child: Container(
        width: 45,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: q.theme.bgColor,
        ),
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Icon(
          Icons.backspace_rounded,
          color: q.theme.textColor1,
          size: q.theme.title1a.fontSize,
        ),
      ),
    ));

    return items;
  }
}
