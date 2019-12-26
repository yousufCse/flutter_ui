import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './item_details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _onTapImage() {
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => ItemDetailsScreen()));

    Navigator.push(context, CupertinoPageRoute(builder: (context)=> ItemDetailsScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: _onTapImage,
          child: Container(
              height: 100.0,
              width: 100.0,
              child: Hero(
                tag: 'imageHero',
                child: Image.asset(
                  'images/a.jpg',
                  fit: BoxFit.cover,
                ),
              )),
        ),
      ),
    );
  }
}
