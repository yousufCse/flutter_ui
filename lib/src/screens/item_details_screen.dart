import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ItemDetailsScreen extends StatefulWidget {
  createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
