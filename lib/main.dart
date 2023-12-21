import 'package:expense_tracker/Pages/expenses.dart';
import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/utils/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true
      ).copyWith(
          colorScheme: kColorScheme,
          appBarTheme: appbarTheme,
          cardTheme: cardTheme,
          elevatedButtonTheme: buttonTheme,
          textTheme: txtTheme,
        ),
      debugShowCheckedModeBanner: false,
        home: const Expenses(),
      )
    );
}

