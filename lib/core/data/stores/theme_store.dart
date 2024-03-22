import 'package:flutter/material.dart';

import 'package:mobx/mobx.dart';

part 'theme_store.g.dart';

/// The store used to manage the current [ThemeMode] of the App
// ignore: library_private_types_in_public_api
final class ThemeStore = _ThemeStore with _$ThemeStore;

abstract class _ThemeStore with Store {
  _ThemeStore(ThemeMode themeMode) : _themeMode = themeMode;

  @readonly
  ThemeMode _themeMode;

  @action
  void setThemeMode(ThemeMode newValue) {
    _themeMode = newValue;
  }
}
