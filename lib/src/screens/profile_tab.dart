import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text('Name: Md. Yousuf Alie'),
            Text('Account open date: 12-09-2015')
          ],
        ),
      ),
    );
  }
}
