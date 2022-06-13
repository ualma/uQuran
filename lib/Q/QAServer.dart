import 'dart:io';
import 'Q.dart';
import 'httpServer/virtual_directory.dart';

class QAServer {
  Q q;
  initQ(Q _q, {String rootPath = ""}) async {
    q = _q;
    if (rootPath == "") {
      rootPath = "${q.mainPath}/at/${q.qraatID.value}/";
    }
    await runserver(q.qAServerPort.value, rootPath);
  }

  runserver(int _port, String rootPath) async {
    try {
      var staticFiles = VirtualDirectory(rootPath, q.code)
        ..allowDirectoryListing = true;

      var server = await HttpServer.bind('0.0.0.0', _port);
      // print('Server running');
      server.listen(staticFiles.serveRequest);
    } catch (e) {
      q.qAServerPort.value = q.qAServerPort.value + 1;
      runserver(q.qAServerPort.value, rootPath);
    }
  }
}
