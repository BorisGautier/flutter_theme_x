// Copyright 2021 The flutter_theme_x Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [FTxShadow] - provides custom shadow to the widget

import 'package:flutter/material.dart';

enum FTxShadowPosition {
  topLeft,
  top,
  topRight,
  centerLeft,
  center,
  centerRight,
  bottomLeft,
  bottom,
  bottomRight
}

class FTxShadow {
  late int alpha;
  late double elevation, spreadRadius, blurRadius;
  Offset? offset;
  FTxShadowPosition? position;
  Color? color;
  bool? darkShadow;

  FTxShadow(
      {double elevation = 8,
      double? spreadRadius,
      double? blurRadius,
      Offset? offset,
      FTxShadowPosition position = FTxShadowPosition.bottom,
      int? alpha,
      Color? color,
      bool darkShadow = false}) {
    this.spreadRadius = spreadRadius ?? elevation * 0.125;
    this.blurRadius = blurRadius ?? elevation * 2;
    this.alpha = alpha != null ? alpha : (darkShadow ? 100 : 36);
    this.elevation = elevation;
    this.offset = offset;
    this.position = position;
    this.color = color;
    this.darkShadow = darkShadow;

    if (offset == null) {
      switch (position) {
        case FTxShadowPosition.topLeft:
          this.offset = Offset(-elevation, -elevation);
          break;
        case FTxShadowPosition.top:
          this.offset = Offset(0, -elevation);
          break;
        case FTxShadowPosition.topRight:
          this.offset = Offset(elevation, -elevation);
          break;
        case FTxShadowPosition.centerLeft:
          this.offset = Offset(-elevation, elevation * 0.25);
          break;
        case FTxShadowPosition.center:
          this.offset = Offset(0, 0);
          break;
        case FTxShadowPosition.centerRight:
          this.offset = Offset(elevation, elevation * 0.25);
          break;
        case FTxShadowPosition.bottomLeft:
          this.offset = Offset(-elevation, elevation);
          break;
        case FTxShadowPosition.bottom:
          this.offset = Offset(0, elevation);
          break;
        case FTxShadowPosition.bottomRight:
          this.offset = Offset(elevation, elevation);
          break;
      }
    }
  }

  @override
  String toString() {
    return 'FTxShadow{alpha: $alpha, elevation: $elevation, spreadRadius: $spreadRadius, blurRadius: $blurRadius, offset: $offset, position: $position, color: $color, darkShadow: $darkShadow}';
  }
}
