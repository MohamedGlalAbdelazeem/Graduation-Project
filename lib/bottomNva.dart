import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:untitled6/LineChart.dart';
import 'Register.dart';
import 'home_screen.dart';
import 'Username.dart';
import 'Currency.dart';
import 'login_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
  static const String home2Rout = 'homescreen';

}

class _BottomNavState extends State<BottomNav> {
  int currentInddex = 0;
  List<Widget> screens =

  [
    HomeScreen(),
    MyGoldPriceChart(),
    MyHomePage1(title:'Stock Ticker Demo'),
    LineChartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[currentInddex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentInddex,
        onTap: (index)
        {
          setState(() {
            currentInddex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Gold',
            backgroundColor: Colors.black,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.price_change),
            label: 'Currency',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.area_chart),
            label: 'LineChart',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
