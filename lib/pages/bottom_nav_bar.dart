import 'package:flutter/material.dart';
// Bottom Navigation Bar Curved Package
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import Page to Navigation
import 'package:doctors_project/pages/info_page.dart';
import 'package:doctors_project/pages/search_doctor_location.dart';
import 'package:doctors_project/pages/home_app_page.dart';
import 'package:doctors_project/pages/search_page.dart';
import 'package:doctors_project/pages/user_profile.dart';
// More Icon Package
import 'package:line_icons/line_icons.dart';

class BnbApp extends StatefulWidget {
  @override
  _BnbAppState createState() => _BnbAppState();
}

class _BnbAppState extends State<BnbApp> {
  // Key
  GlobalKey _bottomNavigationKey = GlobalKey();
  // Index Number
  int _currentIndex = 0;
  // Pages
  final List<Widget> _pages = [
    InfoPage(),
    SearchPage(),
    SearchDoctorLocation(),
    UserProfile(),
    HomePageScreen(),
  ];
  // send current index to Bottom Navigator Bar
  onTappedBNB(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // Colors
  final _green2 = Color(0xff3AA59B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // show the page by index
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: Container(
        height: 65,
        child: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: _currentIndex,
          height: 50.0,
          items: <Widget>[
            Center(child: Icon(LineIcons.info_circle, size: 30)),
            Center(child: Icon(LineIcons.search, size: 30)),
            Center(child: Icon(LineIcons.map_marker, size: 30)),
            Center(child: Icon(LineIcons.user, size: 30)),
            Center(child: Icon(LineIcons.home, size: 30)),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: _green2,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: onTappedBNB,
        ),
      ),
    );
  }
}
