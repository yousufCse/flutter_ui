import 'package:flutter/material.dart';
import 'package:flutter_ui/src/screens/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Toolbar',
      home: HomeScreen(),
    );
  }
}
