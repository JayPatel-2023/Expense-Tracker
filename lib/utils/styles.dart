import 'package:expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';

// light mode themes
final appbarTheme = const AppBarTheme().copyWith(
  backgroundColor: kColorScheme.onPrimaryContainer,
  foregroundColor: kColorScheme.primaryContainer,
);

final cardTheme = const CardTheme().copyWith(
  color: kColorScheme.secondaryContainer,
  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
);

final buttonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: kColorScheme.primaryContainer,
  ),
);

final txtTheme = ThemeData().textTheme.copyWith(
  titleLarge: TextStyle(
    fontWeight: FontWeight.normal,
    color: kColorScheme.onSecondaryContainer,
    fontSize: 14,
  ),
);

// dark mode themes
final darkAppbarTheme = const AppBarTheme().copyWith(
  backgroundColor: kDarkColorScheme.primaryContainer,
  foregroundColor: kDarkColorScheme.onPrimaryContainer,
);

final darkCardTheme = const CardTheme().copyWith(
  color: kDarkColorScheme.secondaryContainer,
  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
);

final darkButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: kDarkColorScheme.primaryContainer,
    foregroundColor: kDarkColorScheme.onPrimaryContainer,
  ),
);

final darkTxtTheme = ThemeData().textTheme.copyWith(
  titleLarge: TextStyle(
    fontWeight: FontWeight.normal,
    color: kDarkColorScheme.onSecondaryContainer,
    fontSize: 14,
  ),
);