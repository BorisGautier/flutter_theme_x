// Copyright 2021 The flutter_theme_x Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// There are mainly 2 types of container .
///
/// [FTxContainer.bordered] - provides border to the container.
/// [FTxContainer.rounded] - provides rounded shape to the container for the given height and width of the container.

import 'dart:ui';

import 'package:flutter_theme_x/themes/app_theme.dart';

import '../../utils/spacing.dart';
import 'package:flutter/material.dart';

class FTxContainer extends StatelessWidget {
  final Widget child;
  final BorderRadius? borderRadius;
  final double? borderRadiusAll, paddingAll, marginAll;
  final EdgeInsetsGeometry? padding, margin;
  final Color? color;
  final bool bordered;
  final Border? border;
  final Clip? clipBehavior;
  final BoxShape shape;
  final double? width, height;
  final AlignmentGeometry? alignment;
  final GestureTapCallback? onTap;
  final Color? splashColor;

  const FTxContainer(
      {Key? key,
      required this.child,
      this.borderRadius,
      this.padding,
      this.borderRadiusAll,
      this.paddingAll,
      this.border,
      this.bordered = false,
      this.clipBehavior,
      this.color,
      this.shape = BoxShape.rectangle,
      this.width,
      this.height,
      this.alignment,
      this.onTap,
      this.marginAll,
      this.margin,
      this.splashColor})
      : super(key: key);

  const FTxContainer.none(
      {Key? key,
      required this.child,
      this.borderRadius,
      this.padding,
      this.borderRadiusAll = 0,
      this.paddingAll = 0,
      this.border,
      this.bordered = false,
      this.clipBehavior,
      this.color,
      this.shape = BoxShape.rectangle,
      this.width,
      this.height,
      this.alignment,
      this.onTap,
      this.marginAll,
      this.margin,
      this.splashColor})
      : super(key: key);

  const FTxContainer.bordered(
      {Key? key,
      required this.child,
      this.borderRadius,
      this.padding,
      this.borderRadiusAll,
      this.paddingAll,
      this.border,
      this.bordered = true,
      this.clipBehavior,
      this.color,
      this.shape = BoxShape.rectangle,
      this.width,
      this.height,
      this.alignment,
      this.onTap,
      this.marginAll,
      this.margin,
      this.splashColor})
      : super(key: key);

  const FTxContainer.roundBordered(
      {Key? key,
      required this.child,
      this.borderRadius,
      this.padding,
      this.borderRadiusAll,
      this.paddingAll,
      this.border,
      this.bordered = true,
      this.clipBehavior,
      this.color,
      this.shape = BoxShape.circle,
      this.width,
      this.height,
      this.alignment,
      this.onTap,
      this.marginAll,
      this.margin,
      this.splashColor})
      : super(key: key);

  const FTxContainer.rounded(
      {Key? key,
      required this.child,
      this.borderRadius,
      this.padding,
      this.borderRadiusAll,
      this.paddingAll,
      this.border,
      this.bordered = false,
      this.clipBehavior = Clip.antiAliasWithSaveLayer,
      this.color,
      this.shape = BoxShape.circle,
      this.width,
      this.height,
      this.alignment,
      this.onTap,
      this.marginAll,
      this.margin,
      this.splashColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: shape != BoxShape.circle
          ? borderRadius ??
              BorderRadius.all(Radius.circular(borderRadiusAll ?? 8))
          : null,
      onTap: onTap,
      splashColor: splashColor ?? Colors.transparent,
      highlightColor: splashColor ?? Colors.transparent,
      child: Container(
        width: width,
        height: height,
        alignment: alignment,
        margin: margin ?? FTxSpacing.all(marginAll ?? 0),
        decoration: BoxDecoration(
            color: color ?? FTxAppTheme.customTheme.bgLayer2,
            shape: shape,
            borderRadius: shape == BoxShape.rectangle
                ? borderRadius ??
                    BorderRadius.all(Radius.circular(borderRadiusAll ?? 8))
                : null,
            border: bordered
                ? border ??
                    Border.all(color: FTxAppTheme.customTheme.border2, width: 1)
                : null),
        padding: padding ?? FTxSpacing.all(paddingAll ?? 16),
        clipBehavior: clipBehavior ?? Clip.none,
        child: child,
      ),
    );
  }
}
