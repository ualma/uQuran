import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'MyLoading.dart';

import 'ExpandableTree/expandable_tree_menu.dart';
import 'MyBackSetting.dart';
import 'Q.dart';
import 'QTreeD.dart';

class QTree extends StatefulWidget {
  QTree({Key key}) : super(key: key);

  @override
  _QTreeState createState() => _QTreeState();
}

class _QTreeState extends State<QTree> with SingleTickerProviderStateMixin {
  _QTreeState() : super();
  final q = Get.put(Q());

  bool loading = false;

  List<TreeNode> tns = [];

  String nodeStr = "";

  load() async {
    List<Map> r = await q.sql.select(
        "SELECT id,ar_id,topid,ar_name,en_name,ug_name,(SELECT count(*) FROM ar_ch as cc where cc.topid=ar_ch.ar_id) as c,(SELECT Count(*) FROM ar_ch_sid_aid where ar_ch_id=ar_ch.ar_id) as sa FROM ar_ch where topid=0 order by id asc");
    tns.clear();
    for (int i = 0; i < r.length; i++) {
      var element = r[i];
      TreeNode tn = TreeNode(element, subNodes: []);
      int topid = element['ar_id'];
      nodeStr +=
          "TreeNode({'ar_id':${element["ar_id"]},'ar_name':'${element["ar_name"].toString().replaceAll("'", '"')}','ug_name':'${element["ug_name"].toString().replaceAll("'", '"').replaceAll("\n", "").trim()}','en_name':'${element["en_name"].toString().replaceAll("'", '"')}','c':${element["c"]},'sa':${element["sa"]}}, subNodes: [ \n";
      List<TreeNode> chtn = await addNode(topid);
      tn.subNodes.addAll(chtn);
      nodeStr += "]),";
      tns.add(tn);
    }
    nodeStr += "";
    loading = true;
    setState(() {});
  }

  Future<List<TreeNode>> addNode(int topid) async {
    List<Map> r = await q.sql.select(
        "SELECT id,ar_id,topid,ar_name,en_name,ug_name,(SELECT count(*) FROM ar_ch as cc where cc.topid=ar_ch.ar_id) as c,(SELECT Count(*) FROM ar_ch_sid_aid where ar_ch_id=ar_ch.ar_id) as sa FROM ar_ch where topid=$topid order by id asc");
    List<TreeNode> _tns = [];
    for (int i = 0; i < r.length; i++) {
      var element = r[i];
      TreeNode _tn = TreeNode(element, subNodes: []);
      int topid = element['ar_id'];
      nodeStr +=
          "TreeNode({'ar_id':${element["ar_id"]},'ar_name':'${element["ar_name"].toString().replaceAll("'", '"')}','ug_name':'${element["ug_name"].toString().replaceAll("'", '"').replaceAll("\n", "").trim()}','en_name':'${element["en_name"].toString().replaceAll("'", '"')}','c':${element["c"]},'sa':${element["sa"]}}, subNodes: [ \n";
      List<TreeNode> chtn = await addNode(topid);
      _tn.subNodes.addAll(chtn);
      nodeStr += "]),";
      _tns.add(_tn);
    }
    return _tns;
  }

  @override
  void initState() {
    super.initState();
    // load();

    setState(() {
      loading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: q.theme.theme,
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              MyBackSetting(context, () {
                setState(() {});
              }),
              Container(
                width: double.infinity,
                // height: 70,
                child: Column(
                  children: [
                    Text(
                      "مواضيع القرآن الكريم",
                      style: q.theme.title1a,
                    ),
                    Text(
                      q.resources.qurandikimazmunlarniuginix,
                      style: q.theme.title1,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: !loading
                    ? Center(
                        child: MyLoading(),
                      )
                    : Container(
                        width: double.infinity,
                        clipBehavior: Clip.antiAlias,
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        // padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
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
                          child: ExpandableTree(
                            closedTwistyColor: q.theme.textColor,
                            openTwistyColor: q.theme.textColor1,
                            submenuClosedColor: q.theme.bgColor2,
                            submenuOpenColor: q.theme.bgColor1,
                            nodes: QTreeDate().qTreeDate(),
                            nodeBuilder: (context, nodeValue) => W(nodeValue),
                            onSelect: (node) {
                              showAya(node["ar_id"]);
                            },
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  W(item) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          margin: item["c"] == 0
              ? EdgeInsets.fromLTRB(0, 0, 40, 0)
              : EdgeInsets.fromLTRB(0, 0, 0, 0),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.black,
                width: 0.2,
              ),
            ),
          ),
          child: Row(
            textDirection: TextDirection.rtl,
            children: [
              Expanded(
                child: Column(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        item["ar_name"],
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: q.theme.titleQa,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        item["ug_name"] == null ? "" : item["ug_name"],
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: q.theme.textHeight20,
                      ),
                    ),
                    q.showTarjimaEnglish.value
                        ? Container(
                            width: double.infinity,
                            child: Text(
                              item["en_name"] == null ? "" : item["en_name"],
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.justify,
                              style: q.theme.textHeight20,
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
              Container(
                width: 60,
                child: item["c"] != 0
                    ? Text(
                        "${item["c"]}",
                        style: q.theme.textStyleSuraNomue,
                      )
                    : Text(
                        "${item["sa"]}",
                        style: q.theme.textStyleSuraNomue,
                      ),
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          color: q.theme.bgColor2,
        ),
      ],
    );
  }

  showAya(int id) async {
    if (loading == false) {
      return;
    }
    List<Map> r = await q.sql.select(
        "SELECT (select n from q_sura where id=ar_ch_sid_aid.sura) as sn, ar_ch_sid_aid.sura, ar_ch_sid_aid.aya,a_Q_text.text, a_Q_text.ug_text FROM ar_ch_sid_aid INNER JOIN  a_Q_text ON ar_ch_sid_aid.sura = a_Q_text.sura AND ar_ch_sid_aid.aya = a_Q_text.aya WHERE (ar_ch_sid_aid.ar_ch_id = $id) ORDER BY ar_ch_sid_aid.sura, ar_ch_sid_aid.aya");
    List suraList = [];
    for (int i = 0; i < r.length; i++) {
      var element = r[i];
      suraList.add(element);
    }
    loading = true;

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            title: Center(
                child: Text(
              "${q.resources.muansiwatlikAyatlar} : ${suraList.length}",
              style: q.theme.textStyle,
            )),
            content: Container(
                // height: 280,
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              reverse: false,
              padding: EdgeInsets.all(0.0),
              physics: BouncingScrollPhysics(),
              child: Column(
                  textDirection: TextDirection.ltr,
                  children: suraList
                      .map((item) => Container(
                              // margin: EdgeInsets.all(10),
                              child: TextButton(
                            onPressed: () {
                              q.gotoSura(item["sura"], item["aya"]);
                            },
                            child: Column(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    item["text"],
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.justify,
                                    style: q.theme.titleQa,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(item["ug_text"],
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.justify,
                                      style: q.theme.textHeight20),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "${item["sura"]} .${item["sn"]}  [${item["aya"]}]",
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.justify,
                                      style: q.theme.titleQa),
                                ),
                                Container(
                                  height: 1,
                                  color: q.theme.bgColor2,
                                ),
                              ],
                            ),
                          )))
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

  @override
  void dispose() {
    super.dispose();
  }
}
