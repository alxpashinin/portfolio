// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LocaleStore on _LocaleStore, Store {
  late final _$_localeAtom =
      Atom(name: '_LocaleStore._locale', context: context);

  Locale get locale {
    _$_localeAtom.reportRead();
    return super._locale;
  }

  @override
  Locale get _locale => locale;

  @override
  set _locale(Locale value) {
    _$_localeAtom.reportWrite(value, super._locale, () {
      super._locale = value;
    });
  }

  late final _$_LocaleStoreActionController =
      ActionController(name: '_LocaleStore', context: context);

  @override
  void setLocale(Locale newValue) {
    final _$actionInfo = _$_LocaleStoreActionController.startAction(
        name: '_LocaleStore.setLocale');
    try {
      return super.setLocale(newValue);
    } finally {
      _$_LocaleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
