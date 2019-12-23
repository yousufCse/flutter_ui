import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

final dataSrc = const [
  {
    'image': 'images/dart.jpg',
    'profile': 'images/profile.jpg',
    'title': 'Flutter - The Framework of 2020 ',
    'subTitle': '6,128 views•Dec 19, 2019'
  },
  {
    'image': 'images/fm1.jpeg',
    'profile': 'images/profile.jpg',
    'title': 'Flutter - The Framework of 2020 (Mobile, Web, Desktop & Beyond)',
    'subTitle': '6,128 views•Dec 19, 2019'
  },
  {
    'image': 'images/dart.jpg',
    'profile': 'images/profile.jpg',
    'title': 'Flutter - The Framework of 2020 (Mobile, Web)',
    'subTitle': '6,128 views•Dec 19, 2019'
  },
  {
    'image': 'images/flutter.png',
    'profile': 'images/profile.jpg',
    'title': 'Flutter - The Framework of 2020 (Mobile, Web, Desktop & Beyond)',
    'subTitle': '6,128 views•Dec 19, 2019'
  },
  {
    'image': 'images/dart.jpg',
    'profile': 'images/profile.jpg',
    'title': 'Flutter - A Framework',
    'subTitle': '6,128 views•Dec 19, 2019'
  },
  {
    'image': 'images/profile.jpg',
    'profile': 'images/profile.jpg',
    'title': 'Flutter - The Framework of 2020 (Mobile, Web, Desktop & Beyond)',
    'subTitle': '6,128 views•Dec 19, 2019'
  },
];

class YoutubeScreen extends StatefulWidget {
  createState() => _YoutubeScreenState();
}

class _YoutubeScreenState extends State<YoutubeScreen> {
  bool loading = true;
  final Color baseColor = Colors.grey;
  final Color highlightColor = Colors.grey[600];

  _changeShimmerState() {
    setState(() {
      loading = !loading;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtube | Home'),
        actions: <Widget>[
          IconButton(
            icon: loading ? Icon(Icons.stop) : Icon(Icons.play_arrow),
            iconSize: 36.0,
            onPressed: _changeShimmerState,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: loading ? 3 : dataSrc.length,
        itemBuilder: (BuildContext context, int index) {
          return loading
              ? _buildShimmerItem(context)
              : _buildYoutubeItem(context, index);
        },
      ),
    );
  }

  _buildYoutubeItem(BuildContext context, int index) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Image.asset(
          dataSrc.elementAt(index)['image'],
          height: 200.0,
          width: screenWidth,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 20.0),
          color: Colors.black54,
          width: screenWidth,
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  dataSrc.elementAt(index)['profile'],
                  height: 40.0,
                  width: 40.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 300,
                      child: Text(
                        dataSrc.elementAt(index)['title'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      dataSrc.elementAt(index)['subTitle'],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  _buildShimmerItem(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        Shimmer.fromColors(
          enabled: false, // set true for animating
          baseColor: baseColor,
          highlightColor: highlightColor,
          child: Container(
            height: 200.0,
            width: screenWidth,
            color: Colors.white,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 20.0),
          width: screenWidth,
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Shimmer.fromColors(
                  baseColor: baseColor,
                  highlightColor: highlightColor,
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Shimmer.fromColors(
                      baseColor: baseColor,
                      highlightColor: highlightColor,
                      child: Container(
                        width: 300,
                        height: 20.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                      ),
                    ),
                    Shimmer.fromColors(
                      baseColor: baseColor,
                      highlightColor: highlightColor,
                      child: Container(
                        width: 300,
                        height: 20.0,
                        margin: EdgeInsets.only(top: 8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                      ),
                    ),
                    Shimmer.fromColors(
                      baseColor: baseColor,
                      highlightColor: highlightColor,
                      child: Container(
                        width: 100,
                        height: 20.0,
                        margin: EdgeInsets.only(top: 8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
