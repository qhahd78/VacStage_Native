import 'package:flutter/material.dart';
import './homePage.dart';
import './selectPage.dart';
import './loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Pretendard',
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => LoginPage(),
        '/select' : (context) => SelectPage(),
        '/home' : (context) => HomePage(),
      },
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
