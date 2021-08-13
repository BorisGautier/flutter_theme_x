// Copyright 2021 The flutter_theme_x Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

///

import 'package:flutter/material.dart';
import 'package:flutter_theme_x/core/routes/middlewares/middleware.dart';

class FTxRoute {
  String name;
  WidgetBuilder widgetBuilder;
  List<FTxMiddleware>? middlewares;

  FTxRoute({required this.name, required this.widgetBuilder, this.middlewares});
}
