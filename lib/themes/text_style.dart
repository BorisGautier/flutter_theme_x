/*
* File : App Theme
* Version : 1.0.0
* */

// Copyright 2021 The flutter_theme_x Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [FTxTextStyle] - gives 13 different type of styles to the text on the basis of size

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

enum FTxTextSize {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  sh1,
  sh2,
  b1,
  b2,
  button,
  caption,
  overline
}

class FTxTextStyle {
  static Function _fontFamily = GoogleFonts.ibmPlexSans;

  static Map<int, FontWeight> _defaultFontWeight = {
    100: FontWeight.w100,
    200: FontWeight.w200,
    300: FontWeight.w300,
    400: FontWeight.w300,
    500: FontWeight.w400,
    600: FontWeight.w500,
    700: FontWeight.w600,
    800: FontWeight.w700,
    900: FontWeight.w800,
  };

  static Map<FTxTextSize, double> _defaultTextSize = {
    FTxTextSize.h1: 102,
    FTxTextSize.h2: 64,
    FTxTextSize.h3: 51,
    FTxTextSize.h4: 36,
    FTxTextSize.h5: 25,
    FTxTextSize.h6: 21,
    FTxTextSize.sh1: 17,
    FTxTextSize.sh2: 15,
    FTxTextSize.b1: 16,
    FTxTextSize.b2: 14,
    FTxTextSize.button: 13,
    FTxTextSize.caption: 12,
    FTxTextSize.overline: 10,
  };

  static Map<FTxTextSize, double> _defaultLetterSpacing = {
    FTxTextSize.h1: -0.2,
    FTxTextSize.h2: -0.15,
    FTxTextSize.h3: 0,
    FTxTextSize.h4: 0,
    FTxTextSize.h5: 0,
    FTxTextSize.h6: 0,
    FTxTextSize.sh1: 0.15,
    FTxTextSize.sh2: 0.15,
    FTxTextSize.b1: 0.15,
    FTxTextSize.b2: 0.15,
    FTxTextSize.button: 0.15,
    FTxTextSize.caption: 0.15,
    FTxTextSize.overline: 0.15,
  };

  static TextStyle getStyle(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double letterSpacing = 0.15,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    double? finalFontSize = fontSize != null ? fontSize : textStyle!.fontSize;

    Color? finalColor;
    if (color == null) {
      Color themeColor =
          FTxAppTheme.getThemeFromThemeMode().colorScheme.onBackground;
      finalColor = xMuted
          ? themeColor.withAlpha(160)
          : (muted ? themeColor.withAlpha(200) : themeColor);
    } else {
      finalColor = xMuted
          ? color.withAlpha(160)
          : (muted ? color.withAlpha(200) : color);
    }

    return _fontFamily(
        fontSize: finalFontSize,
        fontWeight: _defaultFontWeight[fontWeight] ?? FontWeight.w400,
        letterSpacing: letterSpacing,
        color: finalColor,
        decoration: decoration,
        height: height,
        wordSpacing: wordSpacing);
  }

  static TextStyle h1(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FTxTextSize.h1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FTxTextSize.h1] ?? -0.2,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h2(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FTxTextSize.h2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FTxTextSize.h2] ?? -0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h3(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FTxTextSize.h3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FTxTextSize.h3] ?? -0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h4(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FTxTextSize.h4],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FTxTextSize.h4] ?? 0,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h5(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FTxTextSize.h5],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FTxTextSize.h5] ?? 0,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h6(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FTxTextSize.h6],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FTxTextSize.h6] ?? 0,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle sh1(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FTxTextSize.sh1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FTxTextSize.sh1] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle sh2(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FTxTextSize.sh2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FTxTextSize.sh2] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle b1(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FTxTextSize.b1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FTxTextSize.b1] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle b2(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FTxTextSize.b2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FTxTextSize.b2] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle button(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FTxTextSize.button],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FTxTextSize.button] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle caption(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing = 0,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FTxTextSize.caption],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FTxTextSize.caption] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle overline(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FTxTextSize.overline],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[FTxTextSize.overline] ??
            0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static void changeFontFamily(Function fontFamily) {
    FTxTextStyle._fontFamily = fontFamily;
  }

  static void changeDefaultFontWeight(Map<int, FontWeight> defaultFontWeight) {
    FTxTextStyle._defaultFontWeight = defaultFontWeight;
  }

  static void changeDefaultTextSize(Map<FTxTextSize, double> defaultTextSize) {
    FTxTextStyle._defaultTextSize = defaultTextSize;
  }

  static Map<FTxTextSize, double> get defaultTextSize => _defaultTextSize;

  static Map<FTxTextSize, double> get defaultLetterSpacing =>
      _defaultLetterSpacing;

  static Map<int, FontWeight> get defaultFontWeight => _defaultFontWeight;
}
