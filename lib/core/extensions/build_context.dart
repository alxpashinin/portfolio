import 'package:flutter/material.dart';
import 'package:portfolio/core/data/services/storage_service.dart';
import 'package:portfolio/core/l10n/gen/app_localizations.dart';
import 'package:provider/provider.dart';

extension BuildContextExt on BuildContext {
  StorageService get getStorageService => read<StorageService>();

  ThemeData get theme => Theme.of(this);

  AppLocalizations get locale => AppLocalizations.of(this)!;
}
