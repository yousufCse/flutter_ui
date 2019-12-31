import 'package:flutter/material.dart';
import '../widgets/text_field.dart';

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
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                _buildHeader(),
                _buildTextField(),
                _buildForgotContent(),
                _buildLoginButton(),
                _buildRegisterContent(),
              ],
            ),
            _buildSslLogo()
          ],
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

  Widget _buildTextField() {
    return Container(
        margin: EdgeInsets.only(top: 40.0),
        child: Column(
          children: <Widget>[
            TextFieldX(
              hintText: 'Enter your user id',
              labelText: 'User Id',
            ),
            SizedBox(height: 16),
            TextFieldX(
              hintText: 'Enter your password',
              labelText: 'Password',
            ),
          ],
        ));
  }

  _buildForgotContent() {
    return Container(
      margin: EdgeInsets.only(top: 12.0, left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Text('Forgot ID or Password?',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF2F80ED),
                )),
          ),
          InkWell(
            onTap: () {},
            child: Text('Help?',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF2F80ED),
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
    return Container(
        margin: EdgeInsets.only(top: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 48.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: Color(0xFF2F80ED),
                      boxShadow: [
                        BoxShadow(blurRadius: 1.0, color: Colors.black)
                      ]),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.fingerprint),
              iconSize: 48,
              color: Color(0xFF2F80ED),
            )
          ],
        ));
  }

  Widget _buildRegisterContent() {
    return Container(
      margin: EdgeInsets.only(top: 12, left: 16.0),
      child: Row(
        children: <Widget>[
          Text(
            'Don\'t have any account?',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          SizedBox(width: 8),
          InkWell(
              onTap: () {},
              child: Text('Register',
                  style: TextStyle(fontSize: 12, color: Color(0xFF2F80ED))))
        ],
      ),
    );
  }

  Widget _buildSslLogo() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
          padding: EdgeInsets.only(bottom: 48.0),
          child: Image.asset(
            'images/ic_ssl.png',
            height: 30.0,
            width: 72.0,
            fit: BoxFit.cover,
          )),
    );
  }
}
