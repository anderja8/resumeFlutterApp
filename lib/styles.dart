import 'package:flutter/material.dart';

class Styles {
  static const _textSizeLarge = 25.0;
  static const _textSizeDefault = 16.0;
  static const _textSizeSmall = 14.0;
  static const _fontNameDefault = 'YanoneKaffeesatz';
  static const _defaultTextColor = Colors.white;
  static const _wghtStandard = FontWeight.w400;
  static const _wghtBolded = FontWeight.w700;

  static final standardTextStyle = TextStyle(
      fontFamily: _fontNameDefault,
      fontWeight: _wghtStandard,
      fontSize: _textSizeDefault,
      color: _defaultTextColor);

  static final boldedTextStyle = TextStyle(
      fontFamily: _fontNameDefault,
      fontWeight: _wghtBolded,
      fontSize: _textSizeDefault,
      color: _defaultTextColor);

  static final largeTextStyle = TextStyle(
      fontFamily: _fontNameDefault,
      fontWeight: _wghtStandard,
      fontSize: _textSizeLarge,
      color: _defaultTextColor);

  static final largeBoldedTextStyle = TextStyle(
      fontFamily: _fontNameDefault,
      fontWeight: _wghtBolded,
      fontSize: _textSizeLarge,
      color: _defaultTextColor);

  static final smallTextStyle = TextStyle(
      fontFamily: _fontNameDefault,
      fontWeight: _wghtStandard,
      fontSize: _textSizeSmall,
      color: _defaultTextColor);
}
