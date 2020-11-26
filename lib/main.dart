import 'package:flutter/material.dart';
import 'components/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MaterialApp(
      locale: Locale('pt', 'BR'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('pt'),
      ],
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));
