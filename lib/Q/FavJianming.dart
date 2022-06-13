import 'FileManeget.dart';
import 'Q.dart';

class FavJianming {
  Q q;
  FileManeget fm;
  List<dynamic> qFavJianming;
  initQ(Q q) {
    this.q = q;
  }

  init() async {
    if (qFavJianming == null) {
      fm = FileManeget("qFavJianming.json");
      try {
        qFavJianming = await fm.readJSON(q.mainPath);
      } catch (e) {
        print(e);
      }

      if (qFavJianming == null) {
        qFavJianming = [];
      }
    }
  }

  savefmSetting() async {
    await fm.writeJSON(qFavJianming, q.mainPath);
  }

  isQFavJianming(int id) {
    return qFavJianming.contains(id);
  }

  addQFavJianming(int id) async {
    await init();
    qFavJianming.add(id);

    await savefmSetting();
    q.toast(q.resources.kiskusakoxuldi);
  }

  removeQFavJianming(int id) async {
    await init();
    qFavJianming.remove(id);
    await savefmSetting();
    q.toast(q.resources.kiskustinoquruldi);
  }
}

class JFavJianming {
  QFavJianming qFavJianming;
}

class QFavJianming {
  List<int> qFavJianming;
}
