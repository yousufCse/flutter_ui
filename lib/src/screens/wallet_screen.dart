import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        child: Text('My Wallet'),
      ),
    );
  }

  // App Bar
  Widget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        color: Colors.black,
        icon: Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      title: Text(
        'My Wallet',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600
        ),
      ),
      actions: <Widget>[
        
      ],
    );
  }
}
