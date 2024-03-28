import 'package:flutter/material.dart';
import 'package:vacantie_app/shared/theme.dart';

class DetailInfo extends StatelessWidget {
  final String name;
  final String location;
  final double rating;
  final int temperature;
  final String date;

  const DetailInfo({
    required this.name,
    required this.location,
    this.rating = 0.0,
    this.temperature = 0,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    Widget infoIcon(IconData icon) {
      return Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: secondaryColor,
        ),
        child: Icon(
          icon,
          color: primaryColor,
          size: 25,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${name}, ${location}',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: bold,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    infoIcon(Icons.star),
                    Text(
                      rating.toString(),
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    infoIcon(Icons.cloud),
                    Text(
                      '${temperature} \u2103',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    infoIcon(Icons.airplanemode_active),
                    Text(
                      date,
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
