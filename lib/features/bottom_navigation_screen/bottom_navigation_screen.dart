import 'package:adaptive_bottom_navigation/features/home/home_screen.dart';
import 'package:adaptive_bottom_navigation/features/search_screen/search_screen.dart';
import 'package:adaptive_bottom_navigation/features/setting_screen/setting_screen.dart';
import 'package:adaptive_bottom_navigation/util/responsive_util.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveUtils.isMobile(context)) {
      return MobileWithNavigator();
    } else {
      return TabletDesktopWithNavigator();
    }
  }
}

class MobileWithNavigator extends StatefulWidget {
  const MobileWithNavigator({super.key});

  @override
  _MobileWithNavigatorState createState() => _MobileWithNavigatorState();
}

class _MobileWithNavigatorState extends State<MobileWithNavigator> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [HomeScreen(), SearchScreen(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class TabletDesktopWithNavigator extends StatefulWidget {
  const TabletDesktopWithNavigator({super.key});

  @override
  _TabletDesktopWithNavigatorState createState() =>
      _TabletDesktopWithNavigatorState();
}

class _TabletDesktopWithNavigatorState
    extends State<TabletDesktopWithNavigator> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [HomeScreen(), SearchScreen(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          labelType: NavigationRailLabelType.all,
          destinations: const [
            NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
            NavigationRailDestination(icon: Icon(Icons.search), label: Text('Search')),
            NavigationRailDestination(
                icon: Icon(Icons.settings), label: Text('Settings')),
          ],
        ),
        Expanded(
          child: _screens[_selectedIndex],
        ),
      ],
    );
  }
}
