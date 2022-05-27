import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kBackColorLightTheme,
    iconTheme: const IconThemeData(color: kContentColorLightTheme),
    canvasColor: kBackColorLightTheme,
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      tertiary: kTertiaryColor,
      error: kErrorColor,
      surfaceVariant: kContentColorLightTheme,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.blue[900],
    ),
  );
}
