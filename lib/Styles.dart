import 'package:flutter/material.dart';

class Styles {
  static const _textSizeLarge = 25.0;
  static const _textSizeSmall = 18.0;
  static final Color _textColorStrong = Colors.black;
  static final Color _textColorDefault = Colors.black45;
  static final String _fontNameDefault = 'Noto';
  static final headerLarge = TextStyle(
      fontSize: _textSizeLarge,
      color: _textColorStrong,
      fontFamily: _fontNameDefault);

  static final textDefault = TextStyle(
      fontSize: _textSizeSmall,
      color: _textColorDefault,
      fontFamily: _fontNameDefault);

  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) * 0xFF000000);
  }
}
