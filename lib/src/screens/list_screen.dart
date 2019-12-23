import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shimmer List Example'),
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
