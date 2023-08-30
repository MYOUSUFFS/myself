import 'package:flutter/material.dart';

class MyInputDecoration {
  InputDecoration commonInputDecoration(
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

  InputDecoration customInputDecoration(
      {String? hintText,
      Widget? prefixIcon,
      Widget? suffixIcon,
      double? borderRadius}) {
    return InputDecoration(
      suffixIcon: suffixIcon,
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
      ),
    );
  }
}
