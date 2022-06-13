import 'FileManeget.dart';
import 'Q.dart';

class FavDua {
  Q q;
  FileManeget fm;
  List<dynamic> qFavDua;
  initQ(Q q) {
    this.q = q;
  }

  init() async {
    if (qFavDua == null) {
      fm = FileManeget("qFavDua.json");
      try {
        qFavDua = await fm.readJSON(q.mainPath);
      } catch (e) {
        print(e);
      }

      if (qFavDua == null) {
        qFavDua = [];
      }
    }
  }

  savefmSetting() async {
    await fm.writeJSON(qFavDua, q.mainPath);
  }

  isQFavDua(int id) {
    return qFavDua.contains(id);
  }

  addQFavDua(int id) async {
    await init();
    qFavDua.add(id);

    await savefmSetting();
    q.toast(q.resources.kiskusakoxuldi);
  }

  removeQFavDua(int id) async {
    await init();
    qFavDua.remove(id);
    await savefmSetting();
    q.toast(q.resources.kiskustinoquruldi);
  }
}

class JFavDua {
  QFavDua qFavDua;
}

class QFavDua {
  List<int> qFavDua;
}
