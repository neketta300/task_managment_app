import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:task_managment/router/router.dart';

import 'package:task_managment/ui/ui.dart';

import 'generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  debugDisableShadows = true;
  // Удаление splash screen после загрузки приложения
  Future.delayed(const Duration(seconds: 2)).then((_) {
    FlutterNativeSplash.remove();
  });
  runApp(TaskManagment());
}

class TaskManagment extends StatelessWidget {
  TaskManagment({super.key});
  final _router = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Flutter Demo',
      theme: lightTheme,
      routerConfig: _router.config(),
    );
  }
}
