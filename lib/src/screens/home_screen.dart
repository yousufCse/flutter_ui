import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BottomSheet example'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Open sheet: persistent'),
                onPressed: () {
                  showBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      color: Colors.red,
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text('Open sheet: modal'),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
