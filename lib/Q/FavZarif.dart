import 'FileManeget.dart';
import 'Q.dart';

class FavZarif {
  Q q;
  FileManeget fm;
  List<dynamic> qFavZarif;
  initQ(Q q) {
    this.q = q;
  }

  init() async {
    if (qFavZarif == null) {
      fm = FileManeget("qFavZarif.json");
      try {
        qFavZarif = await fm.readJSON(q.mainPath);
      } catch (e) {
        print(e);
      }

      if (qFavZarif == null) {
        qFavZarif = [];
      }
    }
  }

  savefmSetting() async {
    await fm.writeJSON(qFavZarif, q.mainPath);
  }

  isQFavZarif(int id) {
    return qFavZarif.contains(id);
  }

  addQFavZarif(int id) async {
    await init();
    qFavZarif.add(id);

    await savefmSetting();
    q.toast(q.resources.kiskusakoxuldi);
  }

  removeQFavZarif(int id) async {
    await init();
    qFavZarif.remove(id);
    await savefmSetting();
    q.toast(q.resources.kiskustinoquruldi);
  }
}

class JFavZarif {
  QFavZarif qFavZarif;
}

class QFavZarif {
  List<int> qFavZarif;
}
