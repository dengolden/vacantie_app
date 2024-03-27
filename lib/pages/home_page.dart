import 'package:flutter/material.dart';
import 'package:vacantie_app/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/profile.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello Bimo',
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: medium,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Good Morning',
                              style: greyTextStyle,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      margin: EdgeInsets.only(
                        right: 16,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/dark_mode_icon.png'),
                        ),
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/search_icon.png'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 25),
            Text(
              'Lets enjoy your\nVacation',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      );
    }

    Widget homeNavRow() {
      Widget navigationRowItem(String title, bool isSelected) {
        return Container(
          margin: EdgeInsets.only(
            top: 25,
            left: 30,
          ),
          child: Container(
            margin: EdgeInsets.only(
              right: 20,
            ),
            child: Column(
              children: [
                Text(
                  title,
                  style: isSelected
                      ? redTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 12,
                        )
                      : greyTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 2,
                  ),
                  width: 12,
                  height: 2,
                  decoration: BoxDecoration(
                    color: isSelected ? primaryColor : Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
        );
      }

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Expanded(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              navigationRowItem('All', true),
              navigationRowItem('Asia', false),
              navigationRowItem('America', false),
              navigationRowItem('Africa', false),
              navigationRowItem('Europe', false),
              navigationRowItem('North America', false),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        homeNavRow(),
      ],
    );
  }
}
