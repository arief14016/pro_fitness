import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_fitness/pages/main_pages/home_page.dart';
import 'package:pro_fitness/pages/main_pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedTabIndex = 0;
  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      HomePage(),
      HomePage(),
      HomePage(),
      ProfilePage(),
    ];

    final _bottomNavigationItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/icon_home.png'),
        ),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/icon_meal.png'),
        ),
        label: 'Meal Plans',
      ),
      const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/icon_excercise.png'),
        ),
        label: 'Excercise',
      ),
      const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/icon_profile.png'),
        ),
        label: 'Profile',
      ),
    ];

    final _bottomNavBar = BottomNavigationBar(
      items: _bottomNavigationItems,
      type: BottomNavigationBarType.fixed,
      // showSelectedLabels: false,
      elevation: 15,
      backgroundColor: Colors.white54,
      currentIndex: _selectedTabIndex,
      unselectedItemColor: Colors.blueGrey,
      selectedItemColor: Colors.black,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      body: Center(
        child: _listPage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
