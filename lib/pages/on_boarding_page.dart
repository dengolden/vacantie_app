import 'package:flutter/material.dart';
import 'package:vacantie_app/shared/theme.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/on_boarding_bg.png'),
              ),
            ),
            child: Column(
              children: [],
            ),
          ),
          Container(
            width: 48,
            height: 51,
            margin: EdgeInsets.only(
              top: 50,
              left: 180,
              right: 180,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 536,
              left: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Meet all the\nWonderfull Things\nin the World.',
                  style: whiteTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
                SizedBox(height: 11),
                Text(
                  'Find thousand of tourist\ndestination ready for\nyou to visit',
                  style: greyTextStyle.copyWith(
                    height: 1.7,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 55,
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
              top: 753,
              bottom: 60,
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  )),
              child: Text(
                'Get Started',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
