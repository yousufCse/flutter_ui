import 'package:flutter/material.dart';
import 'screens/tab_controller.dart';


class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom navigation example',
      debugShowCheckedModeBanner: false,
      home: MyTabController(),
    );
  }
}
