import 'package:flutter/material.dart';

// Based on seed color it automatically create new colors scheme for all components
var kColorScheme =ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181)
);

// colors scheme for dark mode
var kDarkColorScheme =ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125)
);
