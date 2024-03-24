import 'package:flutter/material.dart';
import 'package:vacantie_app/shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hint;
  final bool isObscure;
  final double marginTop;
  final TextEditingController controller;

  const CustomTextFormField({
    required this.title,
    required this.hint,
    this.isObscure = false,
    required this.marginTop,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: marginTop,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle,
          ),
          SizedBox(height: 4),
          Container(
            width: double.infinity,
            height: 55,
            child: TextFormField(
              obscureText: isObscure,
              controller: controller,
              cursorColor: blackColor,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
                filled: true,
                fillColor: whiteColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: whiteColor,
                  ), // Warna dan lebar border saat tidak fokus
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: blackColor,
                  ), // Warna dan lebar border saat fokus
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
