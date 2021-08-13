// Copyright 2021 The flutter_theme_x Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [FxStarRating] - generates a star rating row widget for giving ratings to a particular thing.

import 'package:flutter/material.dart';

class FxStarRating {
  static const Color starColor = Color(0xfff9c700);

  static Widget buildRatingStar(
      {double rating = 5,
      Color activeColor = starColor,
      Color inactiveColor = starColor,
      double? size = 16,
      double spacing = 0,
      bool inactiveStarFilled = false,
      bool showInactive = true}) {
    int ratingCount = rating.floor();
    bool isHalf = (ratingCount != rating);
    List<Widget> _stars = [];
    for (int i = 0; i < 5; i++) {
      if (i < ratingCount) {
        _stars.add(Icon(
          Icons.star,
          color: activeColor,
          size: size,
        ));

        _stars.add(SizedBox(width: spacing));
      } else {
        if (isHalf) {
          isHalf = false;
          _stars.add(Icon(
            Icons.star_half,
            color: activeColor,
            size: size,
          ));
        } else if (showInactive) {
          _stars.add(Icon(
            inactiveStarFilled ? Icons.star : Icons.star_outline,
            color: inactiveColor,
            size: size,
          ));
        }
        _stars.add(SizedBox(width: spacing));
      }
    }
    return Row(mainAxisSize: MainAxisSize.min, children: _stars);
  }
}
