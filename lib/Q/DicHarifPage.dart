import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'DicHarifSPage.dart';
import 'MyBackSetting.dart';
import 'Q.dart';

class DicHarifPage extends StatefulWidget {
  DicHarifPage({Key key}) : super(key: key);
  @override
  State<DicHarifPage> createState() => _DicHarifPageState();
}

class _DicHarifPageState extends State<DicHarifPage> {
  final q = Get.put(Q());
  final searchcontroller = TextEditingController();
  FocusNode searchFocusNode = FocusNode();
  List searchtItems = [];
  bool loading = false;

  @override
  void initState() {
    super.initState();
    goSearch();
  }

  goSearch() async {
    if (loading) {
      return;
    }
    setState(() {
      loading = true;
    });
    searchtItems.clear();
    for (int i = 0; i < q.harif.length; i++) {
      String h = q.harif[i];
      Map r = await q.sql.selectOne(
          'SELECT count(*) as c FROM a_AR_UY where Sozid=0 and h_id=${i + 1}');
      searchtItems.add({"id": i + 1, "h": h, "c": r["c"]});
    }
    loading = false;
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
                width: double.infinity,
                // height: 70,
                child: Column(
                  children: [
                    Text(
                      q.resources.haripboyqaizdax,
                      style: q.theme.title1,
                    ),
                  ],
                ),
              ),
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
                  child: SingleChildScrollView(
                      //滑动的方向 Axis.vertical为垂直方向滑动，Axis.horizontal 为水平方向
                      scrollDirection: Axis.vertical,
                      //true 滑动到底部
                      reverse: false,
                      padding: EdgeInsets.all(0.0),
                      // 滑动到底部回弹效果
                      physics: BouncingScrollPhysics(),
                      child: Center(
                        child: Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          alignment: WrapAlignment.start,
                          runAlignment: WrapAlignment.spaceBetween,
                          textDirection: TextDirection.rtl,
                          children: getWord(),
                        ),
                      )),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  getWord() {
    List<Widget> items = [];
    searchtItems.forEach((item) {
      items.add(TextButton(
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => new DicHarifSPage(item["id"])));
        },
        child: Container(
          width: 50,
          margin: EdgeInsetsDirectional.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: q.theme.bgColor,
          ),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                item["h"],
                style: q.theme.titleQa,
                textAlign: TextAlign.center,
              ),
              Text(item["c"].toString(), style: q.theme.textStyleAyaNomue),
            ],
          ),
        ),
      ));
    });

    return items;
  }
}
