import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'locale_store.g.dart';

/// The store used to manage the current [Locale] of the App
// ignore: library_private_types_in_public_api
final class LocaleStore = _LocaleStore with _$LocaleStore;

abstract class _LocaleStore with Store {
  _LocaleStore(Locale locale) : _locale = locale;

  @readonly
  Locale _locale;

  @action
  void setLocale(Locale newValue) {
    _locale = newValue;
  }
}
