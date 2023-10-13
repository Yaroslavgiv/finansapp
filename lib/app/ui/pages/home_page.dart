import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'navigation_bar_screen/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Покупки',
      style: optionStyle,
    ),
    Text(
      'Платежи',
      style: optionStyle,
    ),
    Text(
      'Чат',
      style: optionStyle,
    ),
    Text(
      'Бонусы',
      style: optionStyle,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: backgrountColorScaffold,
      bottomNavigationBar: NavigationBar(
        // indicatorShape: ShapeBorder(),
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        indicatorColor: backgrountColorScaffold,
        selectedIndex: _selectedIndex,
        destinations: const <Widget> [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_basket),
            label: 'Покупки',
          ),
          NavigationDestination(
            icon: Icon(Icons.assignment_returned),
            label: 'Платежи',
          ),
          NavigationDestination(
            icon: Icon(Icons.sms),
            label: 'Чат',
          ),
          NavigationDestination(
            icon: Icon(Icons.redeem),
            label: 'Бонусы',
          ),
        ],
        
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
