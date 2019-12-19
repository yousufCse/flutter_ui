import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController(initialPage: 1, viewportFraction: 0.8);

  final names = ['Burger', 'French Fry', 'Pizza', 'Chicken'];
  final images = [
    'images/a.jpg',
    'images/b.jpg',
    'images/c.jpg',
    'images/d.jpg'
  ];

  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          child: ListView(
            children: <Widget>[
              _buildAppBar(),
              _buildFoodGallery(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        Text(
          'Foddie',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {},
        )
      ],
    );
  }

  Widget _buildFoodGallery(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 260,
      width: screenWidth,
      child: PageView(
        controller: controller,
        children: gallery(),
      ),
    );
  }

  List<Widget> gallery() {
    List<Widget> items = List<Widget>();

    for (int i = 0; i < images.length; i++) {
      items.add(Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(
                  images[i],
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ));
    }

    return items;
  }
}
