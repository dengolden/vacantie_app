import 'package:flutter/material.dart';
import 'package:vacantie_app/pages/home_page.dart';
import 'package:vacantie_app/shared/custom_bottom_navigation_item.dart';
import 'package:vacantie_app/shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 68,
          decoration: BoxDecoration(
            color: highlightColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                index: 0,
                imageUrl: 'assets/home_icon.png',
              ),
              CustomBottomNavigationItem(
                index: 1,
                imageUrl: 'assets/notification_icon.png',
              ),
              CustomBottomNavigationItem(
                index: 2,
                imageUrl: 'assets/favorite_icon.png',
              ),
              CustomBottomNavigationItem(
                index: 3,
                imageUrl: 'assets/settings_icon.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
        body: Stack(
      children: [
        buildContent(),
        customBottomNavigation(),
      ],
    ));
  }
}
