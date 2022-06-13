import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Q.dart';

class MyLoading extends StatelessWidget {
  const MyLoading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final q = Get.put(Q());
    return Center(
      child: SizedBox(
          height: 30,
          width: 30,
          child: CircularProgressIndicator(
            color: q.theme.textColor,
          )),
    );
  }
}
