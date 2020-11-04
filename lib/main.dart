// =================================
// ||    Coding by Sajad Rafaa    ||
// =================================

// Please Read the Wiki of this project to more understand
// enjoy :)

//file and pages imports
import 'package:flutter/material.dart';
// first page on the app
import 'package:doctors_project/pages/first_screen.dart';
// login page
import 'package:doctors_project/pages/login_page.dart';
// sign up as a doctor page
import 'package:doctors_project/pages/sign_up_dotor.dart';
// sign up as a person
import 'package:doctors_project/pages/sign_up_user.dart';
// main info page
import 'package:doctors_project/pages/info_page.dart';
// info about code for iraq
import 'package:doctors_project/pages/about_c4i.dart';
// info about the team of this project
import 'package:doctors_project/pages/about_team.dart';
// info about the app
import 'package:doctors_project/pages/about_app.dart';
// bottom navigation class
import 'package:doctors_project/pages/bottom_nav_bar.dart';
// best doctors page
import 'package:doctors_project/pages/best_doctor.dart';
// for test remove it later
import 'package:doctors_project/pages/test.dart';

main(List<String> args) {
  runApp(BootApp());
}

class BootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // main page => firstScreen()
      home: TestPage(),
      theme: ThemeData(
        // arabic font
        fontFamily: "Cairo",
        primaryIconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new FirstScreen(),
        '/Login': (BuildContext context) => new LoginPage(),
        '/DoctorSignUp': (BuildContext context) => new DoctorSignUp(),
        '/PersonSignUp': (BuildContext context) => new UserSignUp(),
        '/AboutC4I': (BuildContext context) => new AboutC4I(),
        '/AboutTeam': (BuildContext context) => new AboutTeam(),
        '/AboutApp': (BuildContext context) => new AboutApp(),
        '/InfoPage': (BuildContext context) => new InfoPage(),
        '/HeroPage': (BuildContext context) => new BnbApp(),
        '/BestDoctor': (BuildContext context) => new BestDoctor(),
      },
    );
  }
}
