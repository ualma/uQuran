import 'FileManeget.dart';
import 'Q.dart';

class FavIbni {
  Q q;
  FileManeget fm;
  List<dynamic> qFavIbni;
  initQ(Q q) {
    this.q = q;
  }

  init() async {
    if (qFavIbni == null) {
      fm = FileManeget("qFavIbni.json");
      try {
        qFavIbni = await fm.readJSON(q.mainPath);
      } catch (e) {
        print(e);
      }

      if (qFavIbni == null) {
        qFavIbni = [];
      }
    }
  }

  savefmSetting() async {
    await fm.writeJSON(qFavIbni, q.mainPath);
  }

  isQFavIbni(int id) {
    return qFavIbni.contains(id);
  }

  addQFavIbni(int id) async {
    await init();
    qFavIbni.add(id);

    await savefmSetting();
    q.toast(q.resources.kiskusakoxuldi);
  }

  removeQFavIbni(int id) async {
    await init();
    qFavIbni.remove(id);
    await savefmSetting();
    q.toast(q.resources.kiskustinoquruldi);
  }
}

class JFavIbni {
  QFavIbni qFavIbni;
}

class QFavIbni {
  List<int> qFavIbni;
}
