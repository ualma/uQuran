import 'FileManeget.dart';
import 'Q.dart';

class FavMuyassar {
  Q q;
  FileManeget fm;
  List<dynamic> qFavMuyassar;
  initQ(Q q) {
    this.q = q;
  }

  init() async {
    if (qFavMuyassar == null) {
      fm = FileManeget("qFavMuyassar.json");
      try {
        qFavMuyassar = await fm.readJSON(q.mainPath);
      } catch (e) {
        print(e);
      }

      if (qFavMuyassar == null) {
        qFavMuyassar = [];
      }
    }
  }

  savefmSetting() async {
    await fm.writeJSON(qFavMuyassar, q.mainPath);
  }

  isQFavMuyassar(int id) {
    return qFavMuyassar.contains(id);
  }

  addQFavMuyassar(int id) async {
    await init();
    qFavMuyassar.add(id);

    await savefmSetting();
    q.toast(q.resources.kiskusakoxuldi);
  }

  removeQFavMuyassar(int id) async {
    await init();
    qFavMuyassar.remove(id);
    await savefmSetting();
    q.toast(q.resources.kiskustinoquruldi);
  }
}

class JFavMuyassar {
  QFavMuyassar qFavMuyassar;
}

class QFavMuyassar {
  List<int> qFavMuyassar;
}
