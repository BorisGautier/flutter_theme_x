library flutter_theme_x;

import 'package:flutter_theme_x/core/logs/log.dart';
import 'package:flutter_theme_x/themes/app_theme_notifier.dart';

export 'widgets/app_bar/app_bar.dart';

class FlutterThemeX {
  // entry point of the package
  init() {
    FxAppThemeNotifier().init();
  }

  static enableLog() {
    FxLog.enable();
  }

  static disableLog() {
    FxLog.disable();
  }
}
