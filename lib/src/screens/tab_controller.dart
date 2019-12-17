import 'package:flutter/material.dart';
import './calls_tab.dart';
import './chat_tab.dart';
import './home_tab.dart';
import './settings_tab.dart';
import './profile_tab.dart';

class MyTabController extends StatefulWidget {
  createState() => _TabControllerState();
}

class _TabControllerState extends State<MyTabController> {
  int _selectedIndex = 0;

  final tabOptions = <Widget> [
    HomeTab(),
    CallsTab(),
    ChatTab(),
    ProfileTab(),
    SettingsTab()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BottomNavigationBar example')),
      body: tabOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.call), title: Text('Calls')),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('Chats')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Settings')),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
