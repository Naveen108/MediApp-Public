import 'package:flutter/material.dart';
import 'package:mediapp/screens/consultDoctorPage/index.dart';
import 'package:mediapp/screens/feedPage/FeedPage.dart';
import 'package:mediapp/screens/profilePage/index.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  final List<Widget> _children = [
    FeedPage(),
    ConsultDoctorPage(),
    ProfilePage(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            //change the feed icon here
            icon: new Icon(
              Icons.rss_feed,
              color: Colors.grey,
            ),

            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.mail_outline,
              color: Colors.grey,
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            title: Text(''),
          )
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
