import 'package:expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';

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
