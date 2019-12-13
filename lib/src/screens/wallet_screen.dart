import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  static const String PROFILE_IMAGE_PATH = 'assets/images/profile.jpg';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(),
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
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: <Widget>[
        Container(
          width: 40.0,
          height: 40.0,
          margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 10.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 2.0),
            ],
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(PROFILE_IMAGE_PATH),
            ),
          ),
        ),
      ],
    );
  }

  // Card horizontal list
  Widget _cardHorizontalList() {
    return Container();
  }
}
