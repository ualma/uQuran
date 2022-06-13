import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uquran/Q/MyTheme.dart';

import 'Q/Q.dart';
import 'Q/QMain.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  PaintingBinding.instance.imageCache.maximumSizeBytes = 1024 * 1024 * 500;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final q = Get.put(Q());

  open() {
    Navigator.of(context)
        .push(new MaterialPageRoute(builder: (context) => new MyQMain(true)))
        .then((value) {
      open();
    });
  }

  @override
  void initState() {
    super.initState();
    //等待1秒
    Future.delayed(Duration(microseconds: 100), () {
      open();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme().bgColor,
      body: SafeArea(
        child: Column(children: [
          // MyBackSetting(q),
          Container(
            height: 40,
            width: double.infinity,
            alignment: Alignment.centerRight,
          ),
          Expanded(
            flex: 40,
            child: Center(
                child: Container(
                    width: MediaQuery.of(context).size.height * 0.3,
                    child: Image(image: AssetImage('assets/images/logo.png')))),
          ),
          Expanded(
            flex: 50,
            child: Center(
              child: Container(),
            ),
          ),
          Expanded(
            flex: 20,
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: Text(Q().appVersion)),
          ),
        ]),
      ),
    );
  }
}
