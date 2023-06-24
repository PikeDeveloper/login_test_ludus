import 'package:flutter/material.dart';

class MyStyles {
  static InputDecoration customInputDecoration(String text) {
    return InputDecoration(
      border: const OutlineInputBorder(),
      labelText: text,
    );
  }
}
