import 'package:flutter/material.dart';
import 'package:flutter_lessons/pages/home_page.dart';
import 'package:flutter_lessons/pages/login_page.dart';
import 'package:flutter_lessons/pages/register_page.dart';
import 'package:flutter_lessons/pages/splash_page.dart';
import 'package:flutter_lessons/pages/unknow_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        'splash': (context) => SplashPage(),
        'login': (context) => LoginPage(),
        'register': (context) => RegisterPage(),
        'home': (context) => HomePage(),
      },
      onUnknownRoute: (context) => MaterialPageRoute(builder: (context) => UnknowPage()),
    );
  }
}
