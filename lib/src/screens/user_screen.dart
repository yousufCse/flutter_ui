import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

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
        child: ListView(
          children: <Widget>[
            _buildProfilePicture(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfilePicture() {
    return Container(
      padding: EdgeInsets.only(top: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildShimmer(
            child: Image(
              height: 100.0,
              width: 100.0,
              color: Colors.red,
              image: AssetImage('images/user.png'),
            ),
          ),
          _buildShimmer(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Md. Yousuf Ali',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black
                ),
              ),
            ),
          ),
          _buildShimmer(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'yousuf.csebd@gmail.com',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  backgroundColor: Colors.green
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShimmer({Widget child}) {
    return Shimmer.fromColors(
      baseColor: Colors.black87,
      highlightColor: Colors.grey,
      child: child,
    );
  }
}
