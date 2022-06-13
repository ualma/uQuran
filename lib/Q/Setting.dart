import 'package:shared_preferences/shared_preferences.dart';

import 'FileManeget.dart';
import 'Q.dart';

class Setting {
  FileManeget fmSetting;
  Map<String, dynamic> setting;

  Q q;

  initQ(Q _q) {
    q = _q;
  }

  init() async {
    if (setting == null) {
      fmSetting = FileManeget("qs.j");
      setting = await fmSetting.readJSON(q.mainPath);
      if (setting == null) {
        setting = Map();
      }
    }
  }

  savefmSetting() async {
    await fmSetting.writeJSON(setting, q.mainPath);
  }

  saveSetting(String name, String value) async {
    await init();
    if (value == null) {
      setting[name] = "";
    } else {
      setting[name] = value;
    }
    await savefmSetting();
  }

  saveSettingOld(String name, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(name, value);
  }

  getSetting(String name, String defaultValue) async {
    await init();
    var value;
    if (setting.containsKey(name)) {
      value = setting[name];
      if (value == "" || value == null) {
        return await getSettingOld(name, defaultValue);
      } else {
        return value;
      }
    } else {
      return await getSettingOld(name, defaultValue);
    }
  }

  getSettingOld(String name, String defaultValue) async {
    var value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    value = prefs.getString(name);
    if (value == null) {
      value = defaultValue;
    }
    return value;
  }

  saveSettingInt(String name, int value) async {
    await init();
    if (value == null) {
      setting[name] = 0;
    } else {
      setting[name] = value;
    }
    await savefmSetting();
  }

  saveSettingIntOld(String name, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(name, value);
  }

  getSettingInt(String name, int defaultValue) async {
    await init();
    var value;
    if (setting.containsKey(name)) {
      value = setting[name];
      if (value == 0 || value == null) {
        return await getSettingIntOld(name, defaultValue);
      } else {
        return value;
      }
    } else {
      return await getSettingIntOld(name, defaultValue);
    }
  }

  getSettingDouble(String name, double defaultValue) async {
    await init();
    var value;
    if (setting.containsKey(name)) {
      value = setting[name];
      if (value == 0 || value == null) {
        return await getSettingDoubleOld(name, defaultValue);
      } else {
        return value;
      }
    } else {
      return await getSettingDoubleOld(name, defaultValue);
    }
  }

  getSettingIntOld(String name, int defaultValue) async {
    var value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    value = prefs.getInt(name);
    if (value == null) {
      value = defaultValue;
    }
    return value;
  }

  getSettingDoubleOld(String name, double defaultValue) async {
    var value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    value = prefs.getInt(name);
    if (value == null) {
      value = defaultValue;
    }
    return value;
  }

  saveSettingBool(String name, bool value) async {
    await init();
    if (value == null) {
      setting[name] = 0;
    } else {
      setting[name] = value;
    }
    await savefmSetting();
  }

  saveSettingBoolOld(String name, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(name, value);
  }

  getSettingBool(String name, bool defaultValue) async {
    await init();
    var value;
    if (setting.containsKey(name)) {
      value = setting[name];
      if (value == null) {
        return await getSettingBoolOld(name, defaultValue);
      } else {
        return value;
      }
    } else {
      return await getSettingBoolOld(name, defaultValue);
    }
  }

  getSettingBoolOld(String name, bool defaultValue) async {
    var value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    value = prefs.getBool(name);
    if (value == null) {
      value = defaultValue;
    }
    return value;
  }
}
