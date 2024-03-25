import 'package:flutter/material.dart';
import 'package:vacantie_app/shared/theme.dart';
import 'package:vacantie_app/widgets/custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final TextEditingController fullNameController =
      TextEditingController(text: '');
  final TextEditingController birthDateController =
      TextEditingController(text: '');
  final TextEditingController countryController =
      TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget headerSection() {
      return Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 40,
            ),
            width: double.infinity,
            height: 334,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/abstract_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 60,
              left: 340,
              right: 27,
            ),
            width: 60,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo_bg.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 60,
              left: 27,
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
          ),
        ],
      );
    }

    Widget inputSection() {
      Widget fullNameForm() {
        return CustomTextFormField(
          title: 'Full Name',
          hint: 'Enter your name',
          marginTop: 38,
          controller: fullNameController,
        );
      }

      Widget birthDateForm() {
        return CustomTextFormField(
          title: 'Birth Date',
          hint: 'Enter your Birth Date',
          marginTop: 10,
          controller: birthDateController,
        );
      }

      Widget countryForm() {
        return CustomTextFormField(
          title: 'Country',
          hint: 'Enter your Country',
          marginTop: 10,
          controller: countryController,
        );
      }

      Widget emailForm() {
        return CustomTextFormField(
          title: 'Email',
          hint: 'Enter your email',
          marginTop: 10,
          controller: emailController,
        );
      }

      Widget passwordForm() {
        return CustomTextFormField(
          title: 'Password',
          hint: 'Enter your password',
          marginTop: 10,
          controller: passwordController,
          isObscure: true,
        );
      }

      Widget signUpButton() {
        return Container(
          width: double.infinity,
          height: 55,
          margin: EdgeInsets.only(
            top: 30,
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                )),
            child: Text(
              'Sign Up',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
        );
      }

      Widget loginButton() {
        return Container(
          margin: EdgeInsets.only(
            top: 30,
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an Account? ',
                    style: blackTextStyle,
                  ),
                  TextSpan(
                    text: 'Login',
                    style: redTextStyle,
                  ),
                ],
              ),
            ),
          ),
        );
      }

      //NOTE: SIGN UP BOX
      return Container(
        margin: EdgeInsets.only(
          top: 150,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 28,
        ),
        width: double.infinity,
        height: 766,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(95),
          ),
          color: secondWhiteColor,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 33,
              ),
              child: Center(
                child: Text(
                  'Sign Up',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
            fullNameForm(),
            birthDateForm(),
            countryForm(),
            emailForm(),
            passwordForm(),
            signUpButton(),
            loginButton(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: secondBlackColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            headerSection(),
            inputSection(),
          ],
        ),
      ),
    );
  }
}
