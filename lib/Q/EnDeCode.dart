import 'dart:typed_data';
import 'package:crypto/crypto.dart';

import 'dict.dart';
import 'dart:convert';
import 'package:archive/archive.dart';

import 'Q.dart';

class EnDeCode {
  String userAgent = 'KarhanaFlutter';
  Q q;
  EnDeCode();

  initQ(Q q) {
    this.q = q;
  }

  List<int> encode(data, {bool isGzip = true}) {
    if (isGzip) {
      List<int> gzipBytes = GZipEncoder().encode(data);
      gzipBytes = aencode(gzipBytes);
      return gzipBytes;
    } else {
      return aencode(data);
    }
  }

  List<int> decode(List<int> zipbytes, {bool isGzip = true}) {
    if (isGzip) {
      return GZipDecoder().decodeBytes(adecode(zipbytes));
    } else {
      return adecode(zipbytes);
    }
  }

  Uint8List encodeString(String s) {
    var encodedString = utf8.encode(s);
    var encodedLength = encodedString.length;
    var data = ByteData(encodedLength + 4);
    data.setUint32(0, encodedLength, Endian.big);
    var bytes = data.buffer.asUint8List();
    bytes.setRange(4, encodedLength + 4, encodedString);
    return bytes;
  }

  List<int> obj2jsonstring(data) {
    String foo = json.encode(data);
    List<int> bytes = utf8.encode(foo);
    return bytes;
  }

  String decodeBytes(List<int> bytes) {
    String bar = utf8.decode(bytes);
    return bar;
  }

  List<int> encoderBytes(String str) {
    List<int> by = utf8.encode(str);
    return by;
  }

  base64Encode(List<int> bytes) {
    return base64.encode(bytes);
  }

  List<int> aencode(List<int> data) {
    List<List<int>> dict = Dict().getEncodeDict();
    // ignore: deprecated_member_use
    List<int> gzipBytes = new List(data.length);
    for (var i = 0; i < data.length; i++) {
      int x = (i % 65536) % 256;
      int y = data[i];
      List<int> list = dict[x];
      int v = list[y];
      gzipBytes[i] = v;
    }
    return gzipBytes;
  }

  List<int> adecode(List<int> data) {
    List<List<int>> dict = Dict().getDecodeDict();
    // ignore: deprecated_member_use
    List<int> gzipBytes = new List(data.length);
    for (var i = 0; i < data.length; i++) {
      int x = (i % 65536) % 256;
      int y = data[i];
      List<int> list = dict[x];
      int v = list[y];
      gzipBytes[i] = v;
    }
    return gzipBytes;
  }

  // md5 加密
  String generateMD5(String data) {
    var content = new Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    return digest.toString();
  }

  String getFileName(int sid, int aya) {
    return "${sid.toString().padLeft(3, "0")}${aya.toString().padLeft(3, "0")}";
  }

  String getFileMD5Name(int sid, int aya) {
    return generateMD5(
        "${sid.toString().padLeft(3, "0")}${aya.toString().padLeft(3, "0")}");
  }

  String getBase64(List<int> data) {
    return base64.encode(data);
  }
}
