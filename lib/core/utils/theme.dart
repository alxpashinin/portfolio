import 'package:flutter/material.dart';

ThemeData _themeData() => ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      useMaterial3: true,
    );

/// Light Theme of entire App
ThemeData lightTheme() => _themeData().copyWith();

/// Dark Theme of entire App
ThemeData darkTheme() => _themeData().copyWith();
