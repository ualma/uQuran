import 'FileManeget.dart';
import 'Q.dart';

class FavJalalein {
  Q q;
  FileManeget fm;
  List<dynamic> qFavJalalein;
  initQ(Q q) {
    this.q = q;
  }

  init() async {
    if (qFavJalalein == null) {
      fm = FileManeget("qFavJalalein.json");
      try {
        qFavJalalein = await fm.readJSON(q.mainPath);
      } catch (e) {
        print(e);
      }

      if (qFavJalalein == null) {
        qFavJalalein = [];
      }
    }
  }

  savefmSetting() async {
    await fm.writeJSON(qFavJalalein, q.mainPath);
  }

  isQFavJalalein(int id) {
    return qFavJalalein.contains(id);
  }

  addQFavJalalein(int id) async {
    await init();
    qFavJalalein.add(id);

    await savefmSetting();
    q.toast(q.resources.kiskusakoxuldi);
  }

  removeQFavJalalein(int id) async {
    await init();
    qFavJalalein.remove(id);
    await savefmSetting();
    q.toast(q.resources.kiskustinoquruldi);
  }
}

class JFavJalalein {
  QFavJalalein qFavJalalein;
}

class QFavJalalein {
  List<int> qFavJalalein;
}
