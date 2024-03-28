import 'package:flutter/material.dart';
import 'package:vacantie_app/shared/theme.dart';
import 'package:vacantie_app/widgets/detail_info.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget description() {
      return Container(
        margin: EdgeInsets.only(
          top: 552,
        ),
        padding: EdgeInsets.only(
          top: 52,
          left: 33,
          right: 33,
        ),
        width: double.infinity,
        height: 210,
        decoration: BoxDecoration(
          color: highlightColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Bali is famous for beaches, countless waves for\nsurfing scuba diving, natiral sites to visit and\nexplore tremely fascinating Hindus culture with\ncolorfuls ceremonies and magnificent temples\ngifted artists the producing.',
              style: greyTextStyle.copyWith(
                fontSize: 13,
                color: Color(0xff6A6A6A),
              ),
            ),
          ],
        ),
      );
    }

    Widget info() {
      return Container(
        width: double.infinity,
        height: 195,
        margin: EdgeInsets.only(
          top: 381,
        ),
        padding: EdgeInsets.only(
          top: 69,
          left: 30,
          right: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        child: DetailInfo(
          name: 'Bali',
          location: 'Indonesia',
          rating: 4.92,
          temperature: 27,
          date: '9 Jan',
        ),
      );
    }

    Widget booking() {
      return Container(
        margin: EdgeInsets.only(
          top: 777,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Starting From',
                  style: blackTextStyle,
                ),
                Text(
                  '\$500 - 750',
                  style: redTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            Container(
              width: 150,
              height: 50,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                ),
                child: Text(
                  'Book Now',
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

    Widget detailImage() {
      return Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/bali_detail_image.png',
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
      );
    }

    Widget backButton() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
          left: 30,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: whiteColor,
            size: 30,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          description(),
          info(),
          booking(),
          detailImage(),
          backButton(),
        ],
      ),
    );
  }
}
