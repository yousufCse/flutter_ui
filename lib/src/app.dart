import 'package:flutter/material.dart';
import 'package:flutter_ui/src/locale/app_translation_delegate.dart';
import 'screens/login_screen.dart';


class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        const AppTranslationsDelegate(),
        

      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('bn', '')
      ],
      title: "Login",
      home: LoginScreen(),
    );
  }
}