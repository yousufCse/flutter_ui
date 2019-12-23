import 'package:flutter/material.dart';


class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Information'),
      ),
      body: Container(
        child: Center(
          child: Text('User info screen'),
        ),
      ),
    );
  }
}