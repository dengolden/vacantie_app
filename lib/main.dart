import 'package:flutter/material.dart';
import 'package:vacantie_app/pages/detail_page.dart';
import 'package:vacantie_app/pages/main_page.dart';
import 'package:vacantie_app/pages/login_page.dart';
import 'package:vacantie_app/pages/on_boarding_page.dart';
import 'package:vacantie_app/pages/sign_up_page.dart';
import 'package:vacantie_app/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/on-boarding': (context) => OnBoardingPage(),
        '/login': (context) => LoginPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail': (context) => DetailPage(),
      },
    );
  }
}
