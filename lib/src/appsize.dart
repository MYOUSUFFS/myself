import 'package:flutter/material.dart';

class AppFlexSize {
  bool sizePc(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1220;
  bool sizeTab(BuildContext context) =>
      MediaQuery.of(context).size.width >= 860;
  bool sizeHeight(BuildContext context) =>
      MediaQuery.of(context).size.height < 600;
}
