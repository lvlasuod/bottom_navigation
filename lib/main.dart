import 'package:bottom_navigation/provider/BottomNavigationBarProvider.dart';
import 'package:bottom_navigation/widgets/Home.dart';
import 'package:bottom_navigation/widgets/Profile.dart';
import 'package:bottom_navigation/widgets/Setting.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<BottomNavigationBarProvider>(
        child: BottomNavigationBarExample(),
        builder: (BuildContext context) => BottomNavigationBarProvider(),
      ),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  @override
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  var currentTab = [
    Home(),
    Profile(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
      body: currentTab[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
          provider.currentColor=index;
        },
        backgroundColor: provider.currentColor,
        items: [
          BottomNavigationBarItem(
            title: new Text('Home',style: TextStyle(color: Colors.white)),
            icon: new Icon(Icons.home , color: Colors.white),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person, color: Colors.white),
            title: new Text('Profile',style: TextStyle(color: Colors.white)),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.white),
            title: Text('Settings',style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
