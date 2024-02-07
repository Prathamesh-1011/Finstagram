import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Finstagram",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.add_a_photo,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    Color activeColor = Colors.red; // Color for the active icon
    Color inactiveColor = Colors.grey; // Color for the inactive icon

    return BottomNavigationBar(
      currentIndex: _currentPage,
      onTap: (_index) {
        setState(() {
          _currentPage = _index;
        });
      },
      items: [
        BottomNavigationBarItem(
          label: 'Feed',
          icon: Icon(
            Icons.feed,
            color: _currentPage == 0
                ? activeColor
                : inactiveColor, // Change color based on active page
          ),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(
            Icons.account_box,
            color: _currentPage == 1
                ? activeColor
                : inactiveColor, // Change color based on active page
          ),
        ),
      ],
    );
  }
}
