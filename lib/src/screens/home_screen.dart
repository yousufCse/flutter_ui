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

  final galleryList = [
    {'name': 'French Fry', 'image': 'images/a.jpg', 'off': '40'},
    {'name': 'Burger', 'image': 'images/b.jpg', 'off': '25'},
    {'name': 'Pizza', 'image': 'images/c.jpg', 'off': '45'},
    {'name': 'Chicken', 'image': 'images/d.jpg', 'off': '10'},
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
      margin: EdgeInsets.only(top: 20.0),
      height: 240,
      width: screenWidth,
      child: PageView(
        controller: controller,
        children: gallery(),
      ),
    );
  }

  List<Widget> gallery() {
    List<Widget> items = List<Widget>();

    for (int i = 0; i < galleryList.length; i++) {
      items.add(Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(
                  galleryList[i]['image'],
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black, Colors.transparent],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      galleryList[i]['name'],
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    SizedBox(height: 5.0,),
                    Text(
                      'Upto ${galleryList[i]['off']}% discount',
                      style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
                    )
                  ],
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
