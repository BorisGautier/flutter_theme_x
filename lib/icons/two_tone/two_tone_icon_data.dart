// Copyright 2021 The flutter_theme_x Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [FTxTwoToneIconData] - gives path of the Icons.

class FTxTwoToneIconData {
  final String name;
  final String extension;
  final String iconPack;

  const FTxTwoToneIconData(this.name,
      {this.extension = "svg", this.iconPack = "mdi"});

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is FTxTwoToneIconData &&
        name == other.name &&
        extension == other.extension &&
        iconPack == other.iconPack;
  }

  @override
  int get hashCode => super.hashCode;

  String get path {
    return "packages/flutter_theme_x/assets/icons/two_tone/" +
        iconPack +
        "/" +
        name +
        "." +
        extension;
  }

  @override
  String toString() {
    return 'FTxTwoToneIconData{name: $name, extension: $extension, iconPack: $iconPack}';
  }
}

class FTxTwoToneIconDataCache {
  static Map<FTxTwoToneIconData, String> cache = {};
}
