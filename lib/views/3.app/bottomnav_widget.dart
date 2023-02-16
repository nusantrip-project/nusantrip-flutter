import 'package:flutter/material.dart';
import 'package:nusantrip/styles/styles.dart';
import 'package:nusantrip/views/3.app/1_eksplor/explor_screen.dart';
import 'package:nusantrip/views/3.app/2_halamantiket/tiket_screen.dart';
import 'package:nusantrip/views/3.app/3_favorite/favorite_screen.dart';
import 'package:nusantrip/views/3.app/4_notifikasi/notiication_screen.dart';
import 'package:nusantrip/views/3.app/5_profil/profile_screen.dart';

class BottomNavWidget extends StatefulWidget {
  static const routeName = './bottomnav';
  const BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int _bottomNavSelectedIndex = 0;
  static const List<Widget> _bottomNavWidget = [
    ExplorScreen(),
    TiketScreen(),
    FavoriteScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  void _onBottomNavClick(int index) {
    setState(() {
      _bottomNavSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_rounded),
              label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket_outlined),
              activeIcon: Icon(Icons.airplane_ticket_rounded),
              label: "My Ticket"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              activeIcon: Icon(Icons.favorite_rounded),
              label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active_outlined),
              activeIcon: Icon(Icons.notifications_active_rounded),
              label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              activeIcon: Icon(Icons.person_rounded),
              label: "Profile"),
        ],
        currentIndex: _bottomNavSelectedIndex,
        onTap: _onBottomNavClick,
        selectedItemColor: Styles.lightBlue,
        backgroundColor: Colors.white,
        unselectedItemColor: Styles.lightBlue,
        elevation: 0,
      ),
      body: Center(
        child: _bottomNavWidget.elementAt(_bottomNavSelectedIndex),
      ),
    );
  }
}
