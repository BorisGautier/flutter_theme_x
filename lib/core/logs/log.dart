// Copyright 2021 The flutter_theme_x Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [FTxLog] - provides a way to print anything in the console-

import 'dart:developer';

class FTxLog {
  static bool _enabled = true;

  FTxLog(dynamic message) {
    if (_enabled) log(message.toString());
  }

  static enable() {
    _enabled = true;
  }

  static disable() {
    _enabled = false;
  }

  static isEnabled() {
    return _enabled;
  }
}
