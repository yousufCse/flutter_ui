import 'package:flutter/material.dart';
import 'screens/home_screen.dart';


class App extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BottomSheet example',
      home: HomeScreen(),
    );
  } 
}