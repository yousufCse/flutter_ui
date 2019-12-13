import 'package:flutter/material.dart';

final List<Map<String, dynamic>> walletList = [
  {
    "type": 'VISA',
    "cardNo": '7589 6589 2548 7502',
    "holderName": 'Mr. Tushar',
    "expDate": '05/22',
    "color": Colors.purple
  },
  {
    "type": 'MASTER CARD',
    "cardNo": '6965 0215 2548 0325',
    "holderName": 'Mr. Abdur Rahim',
    "expDate": '01/24',
    "color": Colors.blue
  },
  {
    "type": 'AMERICAN EXPRESS',
    "cardNo": '1254 9635 2548 7489',
    "holderName": 'Mr. Rana',
    "expDate": '11/30',
    "color": Colors.green
  },
  {
    "type": 'AMERICAN EXPRESS',
    "cardNo": '1254 9635 2548 7489',
    "holderName": 'Mr. Rana',
    "expDate": '11/30',
    "color": Colors.cyan
  },
  {
    "type": 'AMERICAN EXPRESS',
    "cardNo": '1254 9635 2548 7489',
    "holderName": 'Mr. Rana',
    "expDate": '11/30',
    "color": Colors.deepOrange
  }
];

class WalletScreen extends StatelessWidget {
  static const String PROFILE_IMAGE_PATH = 'assets/images/profile.jpg';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[SizedBox(height: 20.0), _buildCardHorizontalList()],
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
  Widget _buildCardHorizontalList() {
    return Container(
      height: 180,
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: walletList.map((item) => _buildWalletCard(item)).toList(),
      ),
    );
  }

  Widget _buildWalletCard(Map<String, dynamic> card) {
    return Card(
      elevation: 5.0,
      color: card['color'],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        height: 180,
        width: 350,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              color: Colors.white,
              child: Text(
                card['type'],
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(
                card['cardNo'],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Card Holder',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        card['holderName'],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Exp. Date',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        card['expDate'],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
