import 'package:flutter/services.dart';

class Channel {
  static const platform = const MethodChannel('myapp/CHANNEL');

  getDocPath() async {
    final String result = await platform.invokeMethod('getDocPath');
    return result.substring(7);
  }

  getLibPath() async {
    final String result = await platform.invokeMethod('getLibPath');
    return result.substring(7);
  }

  getTmpPath() async {
    final String result = await platform.invokeMethod('getLibPath');
    return result.substring(7).replaceAll("Library", "tmp");
  }

  moveOut() async {
    final String result = await platform.invokeMethod('MoveOut');
    return result;
  }

  moveIn() async {
    final String result = await platform.invokeMethod('MoveIn');
    return result;
  }

  setX1() async {
    final String result = await platform.invokeMethod('setX1');
    return result;
  }

  isCall() async {
    final String result = await platform.invokeMethod('isCall');
    if (result == "ok") {
      return true;
    } else {
      return false;
    }
  }

  setX0() async {
    final String result = await platform.invokeMethod('setX0');
    return result;
  }

  play(url) async {
    final String result = await platform.invokeMethod('play', {"url": url});
    return result;
  }

  isHeadsetPluggedIn() async {
    final String result = await platform.invokeMethod('isHeadsetPluggedIn');
    if (result == "ok") {
      return true;
    } else {
      return false;
    }
  }

  headsetExit() async {
    final String result = await platform.invokeMethod('headsetExit');
    if (result == "ok") {
      return true;
    } else {
      return false;
    }
  }
}
