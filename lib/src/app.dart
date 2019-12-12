import 'package:flutter/material.dart';
import 'package:flutter_ui/src/screens/wallet_screen.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WalletScreen(),
    );
  }
}
