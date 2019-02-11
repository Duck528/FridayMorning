import 'package:flutter/material.dart';
import 'package:friday_morning/Feed/feed.dart';
import 'Home/home.dart';

// void main() => runApp(FridayMorningApp());
void main() => runApp(MyApp());

class FridayMorningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friday Morning',
      theme: ThemeData.dark(),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final List<Widget> _tapWidgets = [
    HomePage(),
    Text('Hello Feed'),
    Text('Photo Albums'),
    Text('Settings')
  ];
  int _currentIndex = 0;

  void _tapBarItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _tapBarItemTapped,
        items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text('Feed'), icon: Icon(Icons.hd)),
          BottomNavigationBarItem(title: Text('Photo'), icon: Icon(Icons.photo)),
          BottomNavigationBarItem(title: Text('Settings'), icon: Icon(Icons.settings))
        ],
      ),
      body: Center(child: _tapWidgets[_currentIndex],),
    );
  }
}
