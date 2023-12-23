import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:expense_tracker/Pages/expenses.dart';
import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/utils/styles.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();    // orientation locking
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    // The app only starts when the device orientation = portraitup
    runApp(MaterialApp(
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        colorScheme: kDarkColorScheme,
        appBarTheme: darkAppbarTheme,
        cardTheme: darkCardTheme,
        elevatedButtonTheme: darkButtonTheme,
        textTheme: darkTxtTheme,
      ),
      theme: ThemeData(useMaterial3: true).copyWith(
        colorScheme: kColorScheme,
        appBarTheme: appbarTheme,
        cardTheme: cardTheme,
        elevatedButtonTheme: buttonTheme,
        textTheme: txtTheme,
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const Expenses(),
    ));
  });
}
