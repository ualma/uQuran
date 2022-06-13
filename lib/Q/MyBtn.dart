import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Q.dart';

class MyBtn extends StatefulWidget {
  MyBtn(this.text, {Key key, this.onPressed, this.icon}) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final IconData icon;

  @override
  _MyBtnState createState() => _MyBtnState();
}

class _MyBtnState extends State<MyBtn> {
  final q = Get.put(Q());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.all(7),
      child: TextButton(
        onPressed: () {
          widget.onPressed();
        },
        style: q.theme.btnStyle,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: q.theme.btnText,
            ),
            widget.icon != null
                ? Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Icon(
                      widget.icon,
                      color: q.theme.btnTxtColor,
                    ))
                : Container()
          ],
        ),
      ),
    );
  }
}
