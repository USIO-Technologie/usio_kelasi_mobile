import 'package:flutter/material.dart';

class UsioColor{

  static const MaterialColor black = MaterialColor(
    _blackPrimaryValue,
    <int, Color>{
      50: Color(0xFFf2f2f2),
      100: Color(0xFFe6e6e6),
      200: Color(0xFFbfbfbf),
      300: Color(_blackPrimaryValue),
      400: Color(0xFF737373),
      500: Color(0xFF4d4d4d),
      600: Color(0xFF262626),
    },
  );
  static const int _blackPrimaryValue = 0xFF999999;

  static const MaterialColor red = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      50: Color(0xFFfcece9),
      100: Color(0xFFf8d8d3),
      200: Color(0xFFefa497),
      300: Color(_redPrimaryValue),
      400: Color(0xFFcd3a1f),
      500: Color(0xFFFF0000),
      600: Color(0xFF42130a),
    },
  );
  static const int _redPrimaryValue = 0xFFe56a54;
}