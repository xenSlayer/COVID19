import 'package:corona/pages/Country_Wise.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:corona/pages/global.dart';
import 'package:corona/pages/home.dart';
import 'package:corona/pages/nepal.dart';
import 'package:corona/pages/news.dart';
import 'package:line_icons/line_icons.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
          HomePage(),
          Global(),
          Nepal(),
          News(),
          CountryWise(),
      ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColor: Colors.deepOrange,
        inactiveColor: Colors.grey,
        isTranslucent: false,
        
      ),
      PersistentBottomNavBarItem(
        icon: Icon(LineIcons.globe),
        title: ("Global"),
        activeColor: Colors.deepOrange,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(LineIcons.flag),
        title: ("Nepal"),
        activeColor: Colors.deepOrange,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(LineIcons.newspaper_o),
        title: ("News"),
        activeColor: Colors.deepOrange,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(LineIcons.database),
        title: ("Country Wise"),
        activeColor: Colors.deepOrange,
        inactiveColor: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      items: _navBarsItems(),
      screens: _buildScreens(),
      showElevation: false,
      navBarCurve: NavBarCurve.allCorners,
      backgroundColor: Colors.black,
      iconSize: 28.0,
      navBarStyle:
          NavBarStyle.style8, // Choose the nav bar style with this property
      onItemSelected: (index) {
        
      },
    );
  }
}








