import 'package:flutter/material.dart';

class BottomNavigationBarApp extends StatefulWidget {
  const BottomNavigationBarApp({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigationBarApp> createState() => _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.red,
      currentIndex: _selectedIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.directions_run,
          ),
          label: "Pickup",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.pages,
          ),
          label: "Orders",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle_outlined,
          ),
          label: "Account",
        ),
      ],
      onTap: _onItemTapped,
    );
  }
}
