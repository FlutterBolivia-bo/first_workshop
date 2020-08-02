import 'package:first_workshop/pages/News.dart';
import 'package:first_workshop/pages/Profile.dart';
import 'package:first_workshop/pages/Todo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;

  static List<Widget> _widgetOptions = [Todo(), News(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('To-Do')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('News')),
          BottomNavigationBarItem(
              icon: Icon(Icons.scanner), title: Text('Profile')),
        ],
        currentIndex: _selectIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
}
