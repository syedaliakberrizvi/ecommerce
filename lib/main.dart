import 'package:final_project/homebored.dart';
import 'package:final_project/login.dart';
import 'package:final_project/profile.dart';
import 'package:final_project/wishlist.dart';
import 'package:flutter/material.dart';
import 'widgets/animated_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomBarExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomBarExample extends StatefulWidget {
  @override
  _BottomBarExampleState createState() => _BottomBarExampleState();
}

class _BottomBarExampleState extends State<BottomBarExample> {
  int _selectedIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  List<Widget> get _pages => [
    _buildTabNavigator(
      Homebored(navigatorKey: _navigatorKeys[0], onBackPressed: () {}),
      0,
    ),
    _buildTabNavigator(
      Wishlist(
        navigatorKey: _navigatorKeys[1],
        onBackPressed: () => _onItemTapped(0),
      ),
      1,
    ),
    _buildTabNavigator(
      Wishlist(
        navigatorKey: _navigatorKeys[2],
        onBackPressed: () => _onItemTapped(0),
      ),
      2,
    ),
    _buildTabNavigator(
      Profile(
        navigatorKey: _navigatorKeys[3],
        onBackPressed: () => _onItemTapped(0),
      ),
      3,
    ),
  ];

  Widget _buildTabNavigator(Widget child, int index) {
    return Navigator(
      key: _navigatorKeys[index],
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (_) => child, settings: settings);
      },
    );
  }

  void _onItemTapped(int index) {
    if (_selectedIndex == index) {
      _navigatorKeys[index].currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) async {
        if (!didPop) {
          final currentNavigator = _navigatorKeys[_selectedIndex].currentState!;
          if (currentNavigator.canPop()) {
            currentNavigator.pop();
          } else if (_selectedIndex != 0) {
            setState(() {
              _selectedIndex = 0;
            });
          } else {
            Navigator.of(context).maybePop();
          }
        }
      },
      child: Scaffold(
        body: IndexedStack(index: _selectedIndex, children: _pages),
        bottomNavigationBar: AnimatedBottomBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
