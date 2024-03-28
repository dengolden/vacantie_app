import 'package:flutter/material.dart';
import 'package:vacantie_app/shared/theme.dart';

class PopularCountriesItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final bool isRecommended;

  const PopularCountriesItem({
    required this.imageUrl,
    required this.title,
    this.isRecommended = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        width: 120,
        height: 170,
        margin: EdgeInsets.only(
          top: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
          color: secondWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(defaultRadius),
                      topRight: Radius.circular(defaultRadius),
                    ),
                  ),
                ),
                if (isRecommended)
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 64,
                      height: 30,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(defaultRadius),
                        ),
                      ),
                      child: Icon(
                        Icons.star,
                        color: whiteColor,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
