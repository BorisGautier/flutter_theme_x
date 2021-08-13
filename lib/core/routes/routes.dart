// Copyright 2021 The flutter_theme_x Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [FTxRoutes] - able to create add and map routes.

import 'package:flutter/material.dart';
import 'package:flutter_theme_x/core/routes/middlewares/middleware.dart';
import 'route.dart';

class FTxRoutes {
  static List<FTxRoute> _routes = [];

  static void create(List<FTxRoute> routes) {
    _routes = [];
    _routes.addAll(routes);
  }

  static void add(FTxRoute route) {
    _routes.add(route);
  }

  static void addAll(List<FTxRoute> routes) {
    _routes.addAll(routes);
  }

  static Map<String, WidgetBuilder> getMapped() {
    Map<String, WidgetBuilder> routesMap = {};

    for (FTxRoute route in _routes) {
      routesMap[route.name] = route.widgetBuilder;
    }

    return routesMap;
  }

  static Future<T?> pushNamed<T extends Object?>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) async {
    FTxRoute? fxRoute = getRouteFromName(routeName);
    if (fxRoute == null) throw ("This route is not implemented");

    if (fxRoute.middlewares != null) {
      for (FTxMiddleware middleware in fxRoute.middlewares!) {
        String redirectedRouteName = await middleware.handle(routeName);
        if (redirectedRouteName.compareTo(routeName) != 0) {
          return pushNamed(context, redirectedRouteName, arguments: arguments);
        }
      }
    }

    return Navigator.of(context).pushNamed<T>(routeName, arguments: arguments);
  }

  static FTxRoute? getRouteFromName(String routeName) {
    for (FTxRoute route in _routes) {
      if (route.name.compareTo(routeName) == 0) return route;
    }
    return null;
  }
}
