import 'FileManeget.dart';
import 'Q.dart';

class FavMuhtasar {
  Q q;
  FileManeget fm;
  List<dynamic> qFavMuhtasar;
  initQ(Q q) {
    this.q = q;
  }

  init() async {
    if (qFavMuhtasar == null) {
      fm = FileManeget("qFavMuhtasar.json");
      try {
        qFavMuhtasar = await fm.readJSON(q.mainPath);
      } catch (e) {
        print(e);
      }

      if (qFavMuhtasar == null) {
        qFavMuhtasar = [];
      }
    }
  }

  savefmSetting() async {
    await fm.writeJSON(qFavMuhtasar, q.mainPath);
  }

  isQFavMuhtasar(int id) {
    return qFavMuhtasar.contains(id);
  }

  addQFavMuhtasar(int id) async {
    await init();
    qFavMuhtasar.add(id);

    await savefmSetting();
    q.toast(q.resources.kiskusakoxuldi);
  }

  removeQFavMuhtasar(int id) async {
    await init();
    qFavMuhtasar.remove(id);
    await savefmSetting();
    q.toast(q.resources.kiskustinoquruldi);
  }
}

class JFavMuhtasar {
  QFavMuhtasar qFavMuhtasar;
}

class QFavMuhtasar {
  List<int> qFavMuhtasar;
}
