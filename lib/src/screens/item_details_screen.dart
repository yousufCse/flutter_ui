import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatefulWidget {
  createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 200.0,
              width: double.infinity,
              child: Hero(
                tag: 'imageHero',
                child: Image.asset(
                  'images/a.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
