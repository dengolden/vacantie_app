import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vacantie_app/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/on-boarding', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primaryColor,
              Color(0xffFF6E8C),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 195),
          child: Column(
            children: [
              Container(
                width: 174,
                height: 183,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'VACANTIE',
                style: whiteTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 32,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
