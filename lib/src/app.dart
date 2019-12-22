import 'package:flutter/material.dart';
import 'screens/lock_screen.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shimmer example',
      home: LockScreen(),
    );
  }
}
