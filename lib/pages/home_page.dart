import 'package:flutter/material.dart';
import 'package:vacantie_app/shared/theme.dart';
import 'package:vacantie_app/widgets/ongoing_event_item.dart';
import 'package:vacantie_app/widgets/popular_countries_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 20,
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

    Widget popularCountries() {
      return Container(
        margin: EdgeInsets.only(
          top: 36,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Countries',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 18,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 14,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: greyTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PopularCountriesItem(
                    imageUrl: 'assets/home_bali.png',
                    title: 'Bali',
                    isRecommended: true,
                  ),
                  PopularCountriesItem(
                    imageUrl: 'assets/home_paris.png',
                    title: 'Paris',
                  ),
                  PopularCountriesItem(
                    imageUrl: 'assets/home_england.png',
                    title: 'England',
                  ),
                  PopularCountriesItem(
                    imageUrl: 'assets/home_venice.png',
                    title: 'Venice',
                  ),
                  PopularCountriesItem(
                    imageUrl: 'assets/home_tokyo.png',
                    title: 'Tokyo',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget ongoingEvents() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: defaultMargin,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ongoing Events',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 18,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 14,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: greyTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OngoingEventsItem(
                    title: 'Rio Carnival, Rio\nde Janeiro',
                    location: 'Brazil',
                    imageUrl: 'assets/event_rio.png',
                  ),
                  OngoingEventsItem(
                    title: 'Sapporo Snow\nFestival',
                    location: 'Japan',
                    imageUrl: 'assets/event_japan.png',
                  ),
                  OngoingEventsItem(
                    title: 'Padar Island\nFestival',
                    location: 'Indonesia',
                    imageUrl: 'assets/event_indonesia.png',
                  ),
                  OngoingEventsItem(
                    title: 'Cappadocia\nTours',
                    location: 'Turkey',
                    imageUrl: 'assets/event_turkey.png',
                  ),
                  OngoingEventsItem(
                    title: 'Stonehenge\nVisits',
                    location: 'United Kingdom',
                    imageUrl: 'assets/event_united_kingdom.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        homeNavRow(),
        popularCountries(),
        ongoingEvents(),
      ],
    );
  }
}
