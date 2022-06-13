import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'QHaptiyakPage.dart';
import 'QJanmingPage.dart';
import 'QTree.dart';
import 'DicPage.dart';
import 'DuaPage.dart';
import 'MyBackSetting.dart';

import 'Q.dart';
import 'QIbniPage.dart';
import 'QPage.dart';
import 'QTapJalaleinPage.dart';
import 'QTapMuhtasarPage.dart';
import 'QTapMuyassarPage.dart';
import 'QTapZarfPage.dart';

class QHomePage extends StatefulWidget {
  QHomePage({Key key}) : super(key: key);
  @override
  State<QHomePage> createState() => _QHomePageState();
}

class _QHomePageState extends State<QHomePage> {
  final q = Get.put(Q());
  ImageProvider<dynamic> image1 = AssetImage('assets/images/run.png');
  ImageProvider<dynamic> image2 = AssetImage('assets/images/run.png');
  ImageProvider<dynamic> image3 = AssetImage('assets/images/run.png');
  ImageProvider<dynamic> image4 = AssetImage('assets/images/run.png');
  ImageProvider<dynamic> image5 = AssetImage('assets/images/run.png');
  ImageProvider<dynamic> image6 = AssetImage('assets/images/run.png');
  ImageProvider<dynamic> image7 = AssetImage('assets/images/run.png');
  ImageProvider<dynamic> image8 = AssetImage('assets/images/run.png');
  ImageProvider<dynamic> image9 = AssetImage('assets/images/run.png');
  ImageProvider<dynamic> image10 = AssetImage('assets/images/run.png');
  ImageProvider<dynamic> image11 = AssetImage('assets/images/run.png');
  @override
  void initState() {
    super.initState();
    load();
  }

  load() async {
    image1 = await q.getAssetImageDecode('assets/images/q/1.png');
    image2 = await q.getAssetImageDecode('assets/images/q/2.png');
    image3 = await q.getAssetImageDecode('assets/images/q/3.png');
    image4 = await q.getAssetImageDecode('assets/images/q/4.png');
    image5 = await q.getAssetImageDecode('assets/images/q/5.png');
    image6 = await q.getAssetImageDecode('assets/images/q/6.png');
    image7 = await q.getAssetImageDecode('assets/images/q/7.png');
    image8 = await q.getAssetImageDecode('assets/images/q/8.png');
    image9 = await q.getAssetImageDecode('assets/images/q/9.png');
    image10 = await q.getAssetImageDecode('assets/images/q/10.png');
    image11 = await q.getAssetImageDecode('assets/images/q/11.png');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: q.theme.theme,
      home: Scaffold(
        body: SafeArea(
          child: Column(children: [
            MyBackSetting(context, () {
              setState(() {});
            }),
            Expanded(
              flex: 40,
              child: bookList(
                  q.resources.quran,
                  Container(
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new QPage()),
                          );
                        },
                        child: Image(
                          image: image1,
                        )),
                  )),
            ),
            Expanded(
              flex: 30,
              child: bookList(
                  q.resources.tepsir,
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        imageBotton(q.resources.ibnikasir, image2, () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new QIbniPage()),
                          );
                        }),
                        imageBotton(q.resources.muyassar, image3, () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new QTapMuyassarPage()),
                          );
                        }),
                        imageBotton(q.resources.zarif, image4, () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new QTapZarfPage()),
                          );
                        }),
                        imageBotton(q.resources.muhtasar, image7, () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new QTapMuhtasarPage()),
                          );
                        }),
                        imageBotton(q.resources.jalalein, image9, () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new QTapJalaleinPage()),
                          );
                        }),
                        imageBotton(q.resources.hanzuqatapsir, image11, () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new QJanmingPage()),
                          );
                        }),
                      ],
                    ),
                  )),
            ),
            Expanded(
              flex: 30,
              child: bookList(
                  q.resources.oginix,
                  Container(
                    child: Row(
                      children: [
                        imageBotton(q.resources.logat, image5, () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new DicPage()),
                          );
                        }),
                        imageBotton(q.resources.haptiyak, image6, () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new QHaptiyakPage()),
                          );
                        }),
                        imageBotton(q.resources.dualar, image8, () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new DuaPage()),
                          );
                        }),
                        imageBotton(q.resources.qurandikiTimilar, image10, () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new QTree()),
                          );
                        }),
                      ],
                    ),
                  )),
            ),
          ]),
        ),
      ),
    );
  }

  bookList(String title, Widget books) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              //滑动的方向 Axis.vertical为垂直方向滑动，Axis.horizontal 为水平方向
              scrollDirection: Axis.horizontal,
              //true 滑动到底部
              reverse: false,
              padding: EdgeInsets.all(0.0),
              // 滑动到底部回弹效果
              physics: BouncingScrollPhysics(),
              // controller: _scrollControllerMorph,
              child: books,
            ),
          ),
          Container(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: q.theme.bgColor1,
                    height: 10,
                  ),
                ),
                Container(
                  padding: q.theme.uFontPadding,
                  decoration: BoxDecoration(
                    color: q.theme.bgColor1,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  width: 120,
                  height: 30,
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    style: q.theme.title2,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: q.theme.bgColor1,
                    height: 10,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  imageBotton(String title, ImageProvider img, VoidCallback onPressed) {
    return TextButton(
        onPressed: onPressed,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Image(
                image: img,
              ),
            ),
            Container(
              height: 25,
              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
              alignment: Alignment.center,
              child: Text(
                title,
                style: q.theme.title1,
              ),
            ),
          ],
        ));
  }
}
