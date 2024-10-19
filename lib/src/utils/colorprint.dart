import 'dart:io';

import 'package:flutter/material.dart';

class MySelfColor {
  // Todo : || ------- Default Colors ----------

  void printSuccess({String? text}) {
    // Determine the message to print
    String message = '${text?.isNotEmpty == true ? text : 'Success'}🟢';

    // Format the message for Android
    if (Platform.isAndroid) {
      debugPrint('\x1B[38;5;28m$message\x1B[0m');
    } else {
      debugPrint(message);
    }
  }

  void printError({String? text}) {
    String message = '${text?.isNotEmpty == true ? text : 'Error'}🔴';

    // Format the message for Android
    if (Platform.isAndroid) {
      debugPrint('\x1B[31m$message\x1B[0m');
    } else {
      debugPrint(message);
    }
  }

  void printWarning({String? text}) {
    String message = '${text?.isNotEmpty == true ? text : 'Warning'}🟡';

    // Format the message for Android
    if (Platform.isAndroid) {
      debugPrint('\x1B[33m$message\x1B[0m');
    } else {
      debugPrint(message);
    }
  }

  //! || ------- End of Default Colors ----------

  // Todo : || ------- RGB Color Print -----------

  void printRGB(int r, int g, int b, String text) {
    int codeColor = 16 + (36 * (r ~/ 51)) + (6 * (g ~/ 51)) + (b ~/ 51);

    return debugPrint(
      Platform.isAndroid ? "\x1B[38;5;${codeColor}m$text\x1B[0m" : text,
    );
  }

  //! || ------- End of RGB Color Print ----------

  // Todo : || ------- Material Color Print -----------

  void colorPrint(Color color, String text) {
    printHex(color.toHexCode(), text);
  }

  //! || ------- End of Material Color Print ----------

  // Todo : || ------- HEX Color Print -----------

  void printHex(String hexCode, String text) {
    if (Platform.isAndroid) {
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
    } else {
      return debugPrint(text);
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
  String toHexCode() {
    return '#${value.toRadixString(16).substring(2).toUpperCase()}';
  }
}
