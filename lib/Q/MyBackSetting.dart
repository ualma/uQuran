import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Q.dart';
import 'QSettingPage.dart';

class MyBackSetting extends StatefulWidget {
  final BuildContext mycontext;
  final Function onBack;
  MyBackSetting(this.mycontext, this.onBack, {Key key}) : super(key: key);

  @override
  State<MyBackSetting> createState() => _MyBackSettingState();
}

class _MyBackSettingState extends State<MyBackSetting> {
  final q = Get.put(Q());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: q.theme.btnColor,
            ),
            onPressed: () {
              widget.onBack();
              Navigator.pop(widget.mycontext);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: q.theme.btnColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new QSettingPage()),
              ).then((value) {
                widget.onBack();
              });
            },
          )
        ],
      ),
    );
  }
}
