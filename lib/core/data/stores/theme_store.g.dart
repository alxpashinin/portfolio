// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeStore on _ThemeStore, Store {
  late final _$_themeModeAtom =
      Atom(name: '_ThemeStore._themeMode', context: context);

  ThemeMode get themeMode {
    _$_themeModeAtom.reportRead();
    return super._themeMode;
  }

  @override
  ThemeMode get _themeMode => themeMode;

  @override
  set _themeMode(ThemeMode value) {
    _$_themeModeAtom.reportWrite(value, super._themeMode, () {
      super._themeMode = value;
    });
  }

  late final _$_ThemeStoreActionController =
      ActionController(name: '_ThemeStore', context: context);

  @override
  void setThemeMode(ThemeMode newValue) {
    final _$actionInfo = _$_ThemeStoreActionController.startAction(
        name: '_ThemeStore.setThemeMode');
    try {
      return super.setThemeMode(newValue);
    } finally {
      _$_ThemeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
