import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'colors.dart';
import 'typography.dart';

MaterialAppData material = MaterialAppData(
  theme: _light,
  darkTheme: _dark,
);

CupertinoAppData cupertino = CupertinoAppData(
  theme: MaterialBasedCupertinoThemeData(materialTheme: _light),
);

ThemeData _light = ThemeData.from(
  colorScheme: _lightColorScheme,
  textTheme: _typography,
);

ThemeData _dark = ThemeData.from(
  colorScheme: _darkColorScheme,
  textTheme: _typography,
);

const ColorScheme _lightColorScheme = ColorScheme.light(
  primary: CustomColors.primary,
  primaryVariant: CustomColors.primaryVariant,
  onPrimary: Colors.white,
  secondary: CustomColors.secondary,
  secondaryVariant: CustomColors.secondaryVariant,
  onSecondary: Colors.black,
  error: CustomColors.error,
  onError: Colors.white,
  background: Colors.white,
  onBackground: Colors.black,
  surface: Colors.white,
  onSurface: Colors.black,
);

const ColorScheme _darkColorScheme = ColorScheme.dark(
  primary: CustomColors.primaryDark,
  primaryVariant: CustomColors.primaryVariantDark,
  onPrimary: Colors.black,
  secondary: CustomColors.secondaryDark,
  secondaryVariant: CustomColors.secondaryVariantDark,
  onSecondary: Colors.black,
  error: CustomColors.errorDark,
  onError: Colors.black,
  background: CustomColors.backgroundDark,
  onBackground: CustomColors.foregroundDark,
  surface: CustomColors.surfaceDark,
  onSurface: CustomColors.foregroundDark,
);

const TextTheme _typography = TextTheme(
  headline4: TextStyles.headline4,
  headline5: TextStyles.headline5,
  headline6: TextStyles.headline6,
  subtitle1: TextStyles.subtitle1,
  subtitle2: TextStyles.subtitle2,
  bodyText1: TextStyles.body1,
  bodyText2: TextStyles.body2,
  caption: TextStyles.caption,
  overline: TextStyles.overline,
);

extension ThemeDataExtensions on ThemeData {
  Color dynamicColor({Color light, Color dark}) =>
      brightness == Brightness.light ? light : dark;

  Color get primary3DarkButActuallyLittleLighter => dynamicColor(
        light: CustomColors.primary,
        dark: CustomColors.error,
      );
}
