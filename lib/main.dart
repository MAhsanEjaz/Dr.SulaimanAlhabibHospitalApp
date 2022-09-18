import 'package:flutter/material.dart';
import 'package:web_practice/screens/screens_without_login/home_screen_without_login.dart';

import 'screens/screens_after_login/home_screen.dart';
import 'screens/screens_without_login/nav_bar_screen.dart';
import 'screens/screens_without_login/practice_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              actionsIconTheme: IconThemeData(
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23))),
      // home: const HomeScreenWithoutLogin(),
      // home: HomeScreen(),
      // home: PracticeScreen(),
      home: NavbarScreen(),
    );
  }
}
