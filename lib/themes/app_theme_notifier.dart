/*
* File : App Theme Notifier (Listener)
* Version : 1.0.0
* */

// Copyright 2021 The flutter_theme_x Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [FTxAppThemeNotifier] - notifies the app by giving the theme to the app

import 'dart:developer';

import 'package:flutter/material.dart';
import 'custom_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_theme.dart';

class FTxAppThemeNotifier extends ChangeNotifier {
  init() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    int fxAppThemeMode = sharedPreferences.getInt("fx_app_theme_mode") ??
        FTxAppThemeType.light.index;
    changeAppThemeMode(FTxAppThemeType.values[fxAppThemeMode]);

    int fxCustomThemeMode = sharedPreferences.getInt("fx_custom_theme_mode") ??
        FTxAppThemeType.light.index;
    changeCustomThemeMode(FTxCustomThemeType.values[fxCustomThemeMode]);

    notifyListeners();
  }

  changeAppThemeMode(FTxAppThemeType? themeType) async {
    FTxAppTheme.defaultThemeType = themeType!;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt("fx_app_theme_mode", themeType.index);

    log(FTxAppTheme.getThemeFromThemeMode().toString());
    notifyListeners();
  }

  changeCustomThemeMode(FTxCustomThemeType? themeType) async {
    FTxCustomTheme.defaultThemeType = themeType!;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt("fx_custom_theme_mode", themeType.index);

    notifyListeners();
  }
}
