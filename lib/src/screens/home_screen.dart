import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './item_details_screen.dart';
import '../page_route/page_route.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  onPressedSlideTransiton(){
    Navigator.push(context, SlideRightPageRoute(page: ItemDetailsScreen()));
  }

  onPressedSlideLeftTransition() {
    Navigator.push(context, SlideLeftPageRoute(page: ItemDetailsScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Route Animation'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: onPressedSlideTransiton,
            child: Text('Slide Right Transition'),
          ),
          RaisedButton(
            onPressed: onPressedSlideLeftTransition,
            child: Text('Slide Left Transition'),
          )
        ],
      ),
    );
  }
}
