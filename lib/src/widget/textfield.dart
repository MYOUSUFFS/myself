import 'package:flutter/material.dart';

InputDecoration elevatedInputDecoration(
  String hintText, {
  Widget? prefixIcon,
  Widget? suffixIcon,
  bool filled = false,
  Color? fillColor,
}) {
  return InputDecoration(
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    filled: filled,
    fillColor: filled ? (fillColor ?? Colors.white) : null,
    hintText: hintText,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
  );
}

InputDecoration roundedInputDecoration(
    {String? hintText, Widget? prefixIcon, Widget? suffixIcon}) {
  return InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintText: hintText,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
    ),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
  );
}

InputDecoration squaredInputDecoration(
    {String? hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    double? borderRadius}) {
  return InputDecoration(
    suffixIcon: suffixIcon,
    prefixIcon: prefixIcon,
    hintText: hintText,
    counterText: "",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
    ),
  );
}

InputDecoration squaredInputDecorationWhite(
    {String? hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    double? borderRadius}) {
  return InputDecoration(
    suffixIcon: suffixIcon,
    hintText: hintText,
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
    ),
  );
}

InputDecoration squaredInputDecorationBorderColor(
    {String? hintText, Widget? prefixIcon, Widget? suffixIcon, Color? color}) {
  return InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintText: hintText,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: color ?? Colors.blue, width: 0.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
    ),
  );
}

InputDecoration labelInputDecoration(String label) => InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      filled: true,
      fillColor: Colors.white,
      labelText: label,
    );

InputDecoration labelInputDecorationSuffix(
        BuildContext context, String label) =>
    InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      filled: true,
      fillColor: Colors.white,
      labelText: label,
      suffix: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Text(
          'Change',
          style: TextStyle(fontSize: 12, color: Theme.of(context).primaryColor),
        ),
      ),
    );
