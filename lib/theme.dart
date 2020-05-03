import 'package:flutter/material.dart';

ThemeData appTheme() {
  final TextTheme textTheme = _buildTextTheme();
  final IconThemeData iconTheme = _buildIconTheme();

  return ThemeData.light().copyWith(
    // Set default colors
    primaryColor: _AppColors.primary,
    accentColor: _AppColors.secondary,
    disabledColor: _AppColors.disabled,
    errorColor: _AppColors.error,

    // Themes with _build functions
    appBarTheme: _buildAppBarTheme(textTheme),
    iconTheme: iconTheme,
    primaryIconTheme: iconTheme.copyWith(color: _AppColors.primary),

    // Misc
    buttonTheme: ButtonThemeData(
      buttonColor: _AppColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: textTheme.apply(
      displayColor: _AppColors.primary,
      bodyColor: _AppColors.primary,
    ),
  );
}

AppBarTheme _buildAppBarTheme(TextTheme textTheme) {
  return AppBarTheme(
    textTheme: textTheme.apply(displayColor: _AppColors.primary),
  );
}

IconThemeData _buildIconTheme() {
  return const IconThemeData(color: _AppColors.primary, size: 32);
}

// *** Set Customization Below ***
TextTheme _buildTextTheme() {
  return TextTheme(
    // Using default Material theme system
    // spec: https://material.io/design/typography/the-type-system.html#type-scale
    // on next stable release of Dart, display4 will be renamed to headline 1,
    // display 3 -> headline2, display2 -> headline3, etc.
    display4: _AppTypography.h1,
    display3: _AppTypography.h2,
    display2: _AppTypography.h3,
    display1: _AppTypography.h4,
    headline: _AppTypography.h5,
    // used for input text, list tile title
    subhead: _AppTypography.h6,
    // Used for app bar and dialog titles
    title: _AppTypography.subtitle1,
    subtitle: _AppTypography.subtitle2,
    //
    body1: _AppTypography.body1,
    body2: _AppTypography.body2,
    // used for input error text
    caption: _AppTypography.caption,
    button: _AppTypography.button,
    overline: _AppTypography.overline,
  );
}

class _AppColors {
  // Core
  // static const Color primary = Colors.green;
  static const Color primary = Color(0xFF042240);
  static const Color secondary = Color(0xFF018786);
  static const Color error = Color(0xFFFF0C3E);
  static const Color disabled = Color(0xFF9E9E9E);
}

class _AppTypography {
  static const TextStyle h1 = TextStyle(fontSize: 96, fontWeight: FontWeight.w100);
  static const TextStyle h2 = TextStyle(fontSize: 60, fontWeight: FontWeight.w100);
  static const TextStyle h3 = TextStyle(fontSize: 48, fontWeight: FontWeight.normal);
  static const TextStyle h4 = TextStyle(fontSize: 34, fontWeight: FontWeight.normal);
  static const TextStyle h5 = TextStyle(fontSize: 24, fontWeight: FontWeight.normal);

// Used for app bar and dialog titles
  static const TextStyle h6 = TextStyle(fontSize: 20, fontWeight: FontWeight.w400);

// used for input text, list tile, title
  static const TextStyle subtitle1 = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle subtitle2 = TextStyle(fontSize: 18, fontWeight: FontWeight.w400);

  // Default for a Text Widget
  static const TextStyle body1 = TextStyle(fontSize: 30, fontWeight: FontWeight.normal);
  static const TextStyle body2 = TextStyle(fontSize: 14, fontWeight: FontWeight.normal);

// used for input error text
  static const TextStyle caption = TextStyle(fontSize: 12, fontWeight: FontWeight.normal);
  static const TextStyle button = TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
  static const TextStyle overline = TextStyle(fontSize: 10, fontWeight: FontWeight.normal);
}
