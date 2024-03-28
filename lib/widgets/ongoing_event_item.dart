import 'package:flutter/material.dart';
import 'package:vacantie_app/shared/theme.dart';

class OngoingEventsItem extends StatelessWidget {
  final String title;
  final String location;
  final String imageUrl;

  const OngoingEventsItem({
    required this.title,
    required this.location,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 205,
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      margin: EdgeInsets.only(
        top: 20,
        right: 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imageUrl),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.location_pin,
                size: 25,
                color: whiteColor,
              ),
              Text(
                location,
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
