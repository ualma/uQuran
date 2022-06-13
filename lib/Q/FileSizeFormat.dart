import "package:intl/intl.dart";

class FileSizeFormat {
  getPrintSize(limit) {
    String size = "$limit";
    NumberFormat format = new NumberFormat("0.00");
    if (limit < 1024 * 1024) {
      size = format.format(limit / 1024) + "KB";
    } else if (limit < 1024 * 1024 * 1024) {
      size = format.format(limit / 1024 / 1024) + "MB";
    } else {
      size = format.format(limit / 1024 / 1024 / 1024) + "GB";
    }
    return size;
  }
}
