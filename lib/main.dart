import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:getouthere/generated/l10n.dart';

void main() {

  runApp(const MainApp());

}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      localizationsDelegates: const [

        S.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,

      ],

      supportedLocales: S.delegate.supportedLocales,
      home: Scaffold(

        body: Center(

          child: Text(S.of(context).welcome),

        ),

      ),

    );

  }

}

