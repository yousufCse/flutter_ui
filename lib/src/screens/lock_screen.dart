import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import './user_screen.dart';

class LockScreen extends StatefulWidget {
  @override
  _LockScreenState createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  onUnlockPress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/fm1.jpeg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Shimmer.fromColors(
              baseColor: Colors.red,
              highlightColor: Colors.purple,
              child: _buildShimmerText(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShimmerText() {
    return InkWell(
      onTap: onUnlockPress,
      child: Text(
        '> Slide to unlock',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
