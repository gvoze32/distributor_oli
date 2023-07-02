import 'package:flutter/material.dart';
import 'package:distributor_oli/pages/dashboard.dart';
import 'package:distributor_oli/pages/notify.dart';
import 'package:distributor_oli/pages/profile.dart';
import 'package:hexcolor/hexcolor.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 1;

  final List<Widget> _pages = [
    Notify(),
    Dashboard(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildActiveIcon(String assetName) {
    return Stack(
      children: [
        ImageIcon(
          AssetImage(assetName),
          color: Colors.white,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: FractionallySizedBox(
        alignment: Alignment.center,
        widthFactor: 0.99,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/notify.png"),
                    color: Colors.white,
                  ),
                  activeIcon: _buildActiveIcon("assets/icons/notify.png"),
                  label: 'Notification',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/home.png"),
                    color: Colors.white,
                  ),
                  activeIcon: _buildActiveIcon("assets/icons/home.png"),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/profile.png"),
                    color: Colors.white,
                  ),
                  activeIcon: _buildActiveIcon("assets/icons/profile.png"),
                  label: 'Profile',
                ),
              ],
              currentIndex: _selectedIndex,
              backgroundColor: HexColor("#008FB7"),
              selectedIconTheme: IconThemeData(size: 40),
              unselectedIconTheme: IconThemeData(size: 30.9),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: _onItemTapped,
              type: BottomNavigationBarType.fixed,
            ),
          ),
        ),
      ),
    );
  }
}
