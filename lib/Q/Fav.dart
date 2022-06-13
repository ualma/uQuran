import 'FileManeget.dart';
import 'Q.dart';

class Fav {
  Q q;
  FileManeget fm;
  List<dynamic> qFav;
  initQ(Q q) {
    this.q = q;
  }

  init() async {
    if (qFav == null) {
      fm = FileManeget("qFav.json");
      try {
        qFav = await fm.readJSON(q.mainPath);
      } catch (e) {
        print(e);
      }

      if (qFav == null) {
        qFav = [];
      }
    }
  }

  savefmSetting() async {
    await fm.writeJSON(qFav, q.mainPath);
  }

  isQFav(int sura, int aya) {
    return qFav.contains(sura * 1000 + aya);
  }

  addQFav(int sura, int aya) async {
    await init();
    qFav.add(sura * 1000 + aya);
    await savefmSetting();
    q.toast(q.resources.kiskusakoxuldi);
  }

  removeQFav(int sura, int aya) async {
    await init();
    qFav.remove(sura * 1000 + aya);
    await savefmSetting();
    q.toast(q.resources.kiskustinoquruldi);
  }
}

class JFav {
  QFav qFav;
}

class QFav {
  List<int> qFav;
}
