import 'package:flutter/material.dart';

class MySelfColor {
  // Todo : || ------- Default Colors ----------

  void printSuccess({String? text}) {
    if (text?.isNotEmpty ?? false) {
      debugPrint('\x1B[38;5;28m$text🟢\x1B[0m');
    } else {
      debugPrint('\x1B[38;5;28mSuccess🟢\x1B[0m');
    }
  }

  void printError({String? text}) {
    if (text?.isNotEmpty ?? false) {
      debugPrint('\x1B[31m$text🔴\x1B[0m');
    } else {
      debugPrint('\x1B[31mError🔴\x1B[0m');
    }
  }

  void printWarning({String? text}) {
    if (text?.isNotEmpty ?? false) {
      debugPrint('\x1B[33m$text🟡\x1B[0m');
    } else {
      debugPrint('\x1B[33mWarning🟡\x1B[0m');
    }
  }

  //! || ------- End of Default Colors ----------

  // Todo : || ------- RGB Color Print -----------

  void printRGB(int r, int g, int b, String text) {
    int codeColor = 16 + (36 * (r ~/ 51)) + (6 * (g ~/ 51)) + (b ~/ 51);

    return debugPrint("\x1B[38;5;${codeColor}m$text\x1B[0m");
  }

  //! || ------- End of RGB Color Print ----------

  // Todo : || ------- Material Color Print -----------

  void colorPrint(Color color, String text) {
    printHex(color.toHex(), text);
  }

  //! || ------- End of Material Color Print ----------

  // Todo : || ------- HEX Color Print -----------

  void printHex(String hexCode, String text) {
    try {
      Map<String, int> rgbValues = _hex(hexCode);
      int codeColor = 16 +
          (36 * (rgbValues['r']! ~/ 51)) +
          (6 * (rgbValues['g']! ~/ 51)) +
          (rgbValues['b']! ~/ 51);
      return debugPrint("\x1B[38;5;${codeColor}m$text\x1B[0m");
    } catch (e) {
      return printError(text: e.toString());
    }
  }

  Map<String, int> _hex(String hexColorCode) {
    String hex = hexColorCode.replaceAll("#", "");
    if (hex.length != 6) {
      throw const FormatException("Invalid hexadecimal color code");
    }

    int r = int.parse(hex.substring(0, 2), radix: 16);
    int g = int.parse(hex.substring(2, 4), radix: 16);
    int b = int.parse(hex.substring(4, 6), radix: 16);

    return {'r': r, 'g': g, 'b': b};
  }
  //! || ------- End of HEX Color Print ----------
}

extension MyColor on Color {
  String toHex() {
    return '#${value.toRadixString(16).substring(2).toUpperCase()}';
  }
}
