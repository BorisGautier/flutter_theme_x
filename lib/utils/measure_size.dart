// Copyright 2021 The flutter_theme_x Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [FTxMeasureSize] - measures the size of any particular widget

import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';

typedef void OnWidgetSizeChange(Size? size);

class FTxMeasureSize extends StatefulWidget {
  final Widget child;
  final OnWidgetSizeChange onChange;

  const FTxMeasureSize({
    Key? key,
    required this.onChange,
    required this.child,
  }) : super(key: key);

  @override
  _FTxMeasureSizeState createState() => _FTxMeasureSizeState();
}

class _FTxMeasureSizeState extends State<FTxMeasureSize> {
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance!.addPostFrameCallback(postFrameCallback);
    return Container(
      key: widgetKey,
      child: widget.child,
    );
  }

  var widgetKey = GlobalKey();
  var oldSize;

  void postFrameCallback(_) {
    var context = widgetKey.currentContext;
    if (context == null) return;

    var newSize = context.size;
    if (oldSize == newSize) return;

    oldSize = newSize;
    widget.onChange(newSize);
  }
}
