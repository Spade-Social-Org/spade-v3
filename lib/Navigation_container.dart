import 'package:flutter/material.dart';
import 'package:spade/screen/discover_screen.dart';
import 'package:spade/screen/home_screen.dart';
import 'package:spade/screen/map_screen.dart';
import 'package:spade/screen/message_screen.dart';
import 'package:spade/screen/profile_screen.dart';
import 'package:spade/widgets/custom_bottom_nav_bar.dart';

class Navigationcontianer extends StatefulWidget {
  const Navigationcontianer({super.key});

  @override
  State<Navigationcontianer> createState() => _NavigationcontianerState();
}

class _NavigationcontianerState extends State<Navigationcontianer> {
  int _selectedPageIndex = 0;

  static final List<Widget> _appPages = [
    const HomeScreen(),
    const MessageScreen(),
   DiscoveryScreen(),
    const MapScreen(),
    const MoreScreen(),
  ];

  void _onIconTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _appPages[_selectedPageIndex],
      ),
      bottomNavigationBar: CustomerNavigationBar(
        selectedPageIndex: _selectedPageIndex,
        onIconTap: _onIconTapped,
      ),
    );
  }
}
