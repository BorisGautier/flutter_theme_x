// Copyright 2021 The flutter_theme_x Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [FTxTwoToneIcon] - provides two tone Icons.

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_theme_x/icons/two_tone/two_tone_icon_data.dart';

class FTxTwoToneIcon extends StatefulWidget {
  final FTxTwoToneIconData iconData;
  final Color? color;
  final double? size;

  const FTxTwoToneIcon(this.iconData, {this.color, this.size = 24});

  @override
  _FTxTwoToneIconState createState() => _FTxTwoToneIconState();
}

class _FTxTwoToneIconState extends State<FTxTwoToneIcon> {
  String? iconDataString;
  FTxTwoToneIconData? iconData;

  @override
  void initState() {
    super.initState();
    getIconDataString();
  }

  @override
  Widget build(BuildContext context) {
    fetchCacheData();

    if (iconData != null) {
      if (!(iconData == widget.iconData)) getIconDataString();
    }

    return iconDataString == null
        ? Container()
        : SvgPicture.string(
            iconDataString!,
            color: widget.color,
            width: widget.size,
            height: widget.size,
          );
  }

  getIconDataString() async {
    String data = await rootBundle.loadString(widget.iconData.path);

    setState(() {
      iconDataString = data;
      iconData = widget.iconData;
    });

    FTxTwoToneIconDataCache.cache[widget.iconData] = data;
  }

  void fetchCacheData() {
    iconDataString = FTxTwoToneIconDataCache.cache[widget.iconData];
  }
}
