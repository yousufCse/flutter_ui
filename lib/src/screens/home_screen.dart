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

  onPressedScaleTransition() {
    Navigator.push(context, ScalePageRoute(page: ItemDetailsScreen()));
  }

 onPressedRotationTransition() {
    Navigator.push(context, RotationPageRoute(page: ItemDetailsScreen()));
  }
 onPressedSizeTransition() {
    Navigator.push(context, SizePageRoute(page: ItemDetailsScreen()));
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
          ),
           RaisedButton(
            onPressed: onPressedScaleTransition,
            child: Text('Scale Transition'),
          ),
           RaisedButton(
            onPressed: onPressedRotationTransition,
            child: Text('Rotation Transition'),
          ),
           RaisedButton(
            onPressed: onPressedSizeTransition,
            child: Text('Size Transition'),
          ),
        ],
      ),
    );
  }
}
