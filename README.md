# Flutter_Theme_X

Flutter_Theme_X is a flutter plugin that allows you to easily integrate prebuilt widgets into your application. In addition to that it allows you to manage the theme of your application in a few lines.

Flutter_theme_x utilise principalement les plugins :

- google_fonts
- provider
- shared_preferences
- flutter_svg
- http

# How to use it?

After installing the plugin in flutter you just have to import it in your code

```dart
import 'package:flutter_theme_x/flutter_theme_x.dart';
```

## Flutter_Theme_X

flutter_theme_x is a library of hardware widgets ready to be integrated in your applications. it also integrates the management of light and dark themes in your applications

## List of available widgets

- FTxBottomNavigationBar
- FTxButton
- FTxCard
- FTxContainer
- FTxCreditCard
- FTxCustomRating
- FTxDashedDivider
- FTxDottedLineCorner
- FTxOnBoarding
- FTxText
- FTxTextField
- FTxTextLiquidFill
-

## Use Theme

By default flutter_theme_x integrates a light theme and a dark theme with default colors. To use these in your application, you can proceed as follows

```dart
import 'package:flutter_theme_x/themes/app_theme.dart';

FTxAppTheme.changeThemeType(FxAppThemeType.light); or
FTxAppTheme.changeThemeType(FxAppThemeType.dark);
```

**Constants**

<table style="width:100%">
  <tr>
    <th>FTxTheme TYPE</th>
  </tr>
  <tr>
    <td>light<br/>dark<br/></td>
  </tr>
</table>
