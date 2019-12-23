import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListScreen extends StatefulWidget {
  createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final dataSrc = [
    {
      'image': 'images/fm1.jpeg',
      'title': 'Pizza',
      'subTitle':
          'Pizza (Italian: [ˈpittsa], Neapolitan: [ˈpittsə]) is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (anchovies, olives, meat, etc.) baked at a high temperature, traditionally in a wood-fired oven.[1] A small pizza is sometimes called a pizzetta. '
    },
    {
      'image': 'images/fm2.png',
      'title': 'Burger',
      'subTitle':
          'Pizza (Italian: [ˈpittsa], Neapolitan: [ˈpittsə]) is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (anchovies, olives, meat, etc.) baked at a high temperature, traditionally in a wood-fired oven.[1] A small pizza is sometimes called a pizzetta. '
    },
    {
      'image': 'images/iphone_new.jpg',
      'title': 'Wadges',
      'subTitle':
          'Pizza (Italian: [ˈpittsa], Neapolitan: [ˈpittsə]) is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (anchovies, olives, meat, etc.) baked at a high temperature, traditionally in a wood-fired oven.[1] A small pizza is sometimes called a pizzetta. '
    },
    {
      'image': 'images/fm1.jpeg',
      'title': 'French Fry',
      'subTitle':
          'Pizza (Italian: [ˈpittsa], Neapolitan: [ˈpittsə]) is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (anchovies, olives, meat, etc.) baked at a high temperature, traditionally in a wood-fired oven.[1] A small pizza is sometimes called a pizzetta. '
    },
    {
      'image': 'images/fm2.png',
      'title': 'Chola Borata',
      'subTitle':
          'Pizza (Italian: [ˈpittsa], Neapolitan: [ˈpittsə]) is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (anchovies, olives, meat, etc.) baked at a high temperature, traditionally in a wood-fired oven.[1] A small pizza is sometimes called a pizzetta. '
    },
  ];
  bool loading = true;

  onStopPressed() {
    setState(() {
      loading = !loading;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shimmer List Example'),
        actions: <Widget>[
          IconButton(
            icon: loading ? Icon(Icons.stop) : Icon(Icons.play_arrow),
            color: Colors.red,
            iconSize: 36.0,
            onPressed: onStopPressed,
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: loading ? 6 : dataSrc.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildListItem(context, index);
          },
        ),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black12,
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              image: DecorationImage(
                image: AssetImage(
                    dataSrc.elementAt(0)['image']),
                fit: BoxFit.cover,
              ),
            ),
            child: ShimmerHelper(
              child: Container(),
              animating: loading,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            height: 80.0,
            width: 300.0,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Positioned(
                  top: 0.0,
                  child: ShimmerHelper(
                    animating: loading,
                    child: Text(
                      '${dataSrc.elementAt(0)['title']}',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  child: ShimmerHelper(
                    animating: loading,
                    child: Text(
                      '${dataSrc.elementAt(0)['subTitle']}',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ShimmerHelper extends StatelessWidget {
  final Widget child;
  final bool animating;

  ShimmerHelper({@required this.child, this.animating = true});

  Widget build(BuildContext context) {
    if (animating) {
      return Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.grey[600],
        child: Container(
          child: this.child,
          color: Colors.white,
        ),
      );
    } else {
      return this.child;
    }
  }
}
