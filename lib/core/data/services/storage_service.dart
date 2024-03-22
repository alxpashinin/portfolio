import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Service used to work with application storage
abstract interface class StorageService {
  ThemeMode? getThemeMode();

  Locale? getLocale();

  Future<void> setThemeMode(ThemeMode newValue);

  Future<void> setLocale(Locale newValue);

  /// Clear all storage
  Future<bool> clearAll();
}

final class StorageServiceImpl implements StorageService {
  StorageServiceImpl({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  final String _localeKey = 'localeKey';

  final String _themeModeKey = 'themeModeKey';

  @override
  Locale? getLocale() {
    final value = _sharedPreferences.getString(_localeKey);
    return value == null ? null : Locale(value);
  }

  @override
  ThemeMode? getThemeMode() {
    final value = _sharedPreferences.getString(_themeModeKey);
    return value == null ? null : ThemeMode.values.byName(value);
  }

  @override
  Future<void> setLocale(Locale newValue) async {
    await _sharedPreferences.setString(_localeKey, newValue.languageCode);
  }

  @override
  Future<void> setThemeMode(ThemeMode newValue) async {
    await _sharedPreferences.setString(_themeModeKey, newValue.name);
  }

  @override
  Future<bool> clearAll() async {
    return await _sharedPreferences.clear();
  }
}
