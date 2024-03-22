import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/core/data/stores/locale_store.dart';
import 'package:portfolio/core/data/services/storage_service.dart';
import 'package:portfolio/core/data/stores/theme_store.dart';
import 'package:portfolio/core/l10n/gen/app_localizations.dart';
import 'package:portfolio/core/utils/theme.dart';
import 'package:portfolio/features/home/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  final storageService = StorageServiceImpl(
    sharedPreferences: await SharedPreferences.getInstance(),
  );

  runApp(
    MultiProvider(
      providers: [
        Provider<StorageService>.value(
          value: storageService,
        ),
        Provider<LocaleStore>(
          create: (context) => LocaleStore(
            storageService.getLocale() ?? Locale(Intl.getCurrentLocale()),
          ),
        ),
        Provider<ThemeStore>(
          create: (_) => ThemeStore(
            storageService.getThemeMode() ?? ThemeMode.system,
          ),
        ),
      ],
      child: const PLApp(),
    ),
  );
}

class PLApp extends StatelessWidget {
  const PLApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => MaterialApp(
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: context.watch<ThemeStore>().themeMode,
        locale: context.watch<LocaleStore>().locale,
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        home: const HomeScreen(),
      ),
    );
  }
}
