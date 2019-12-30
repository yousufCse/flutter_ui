import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(32, 40, 32, 0),
        color: Color(0xFFF2F2F2),
        child: Column(
          children: <Widget>[_buildHeader(), _buildTextField()],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _buildLoginText(),
        _buildLanguage(),
      ],
    );
  }

  Widget _buildLoginText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Login',
          style: TextStyle(
              fontSize: 24,
              color: Color(0xFF333333),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 4.0,
          width: 24.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.0,
                  0.5,
                  1.0
                ],
                colors: [
                  Color(0xFF2F80ED),
                  Color(0xFF3A3CAF),
                  Color(0xFF3E259B)
                ]),
          ),
        ),
      ],
    );
  }

  Widget _buildLanguage() {
    return Container(
      height: 32,
      width: 72,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        children: <Widget>[
          _buildLanguageBar(selected: true, title: 'ENG'),
          _buildLanguageBar(selected: false, title: 'BAN')
        ],
      ),
    );
  }

  Widget _buildLanguageBar({selected: bool, title: String}) {
    final borderRadius = 20.0;

    return Container(
      width: 36.0,
      height: 32.0,
      decoration: selected
          ? BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF2F80ED), Color(0xFF3E259B)]),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadius),
                  bottomLeft: Radius.circular(borderRadius)),
              boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 1.0,
                  )
                ])
          : BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(borderRadius),
                  bottomRight: Radius.circular(borderRadius)),
              boxShadow: [
                  BoxShadow(color: Color(0x14000000), blurRadius: 1.0),
                ]),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: selected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 10),
        ),
      ),
    );
  }

  Widget _buildTextField(){
    return Container();
  }
}
