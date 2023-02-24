import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'calculator_page.dart';

void main() {
  runApp(YaruTheme(
    builder: (context, yaru, child) => MaterialApp(
      theme: yaru.theme,
      darkTheme: yaru.darkTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      builder: (context, child) => Scaffold(
        appBar: YaruWindowTitleBar(
          title: Text(AppLocalizations.of(context).windowTitle),
        ),
        body: child,
      ),
      routes: const {
        Navigator.defaultRouteName: CalculatorPage.create,
      },
    ),
  ));
}
