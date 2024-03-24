import 'package:flutter/material.dart';
import 'package:vacantie_app/shared/theme.dart';
import 'package:vacantie_app/widgets/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

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
              top: 90,
              left: 160,
            ),
            width: 97,
            height: 93,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo_bg.png'),
              ),
            ),
          ),
        ],
      );
    }

    Widget inputSection() {
      Widget emailForm() {
        return CustomTextFormField(
          title: 'Email',
          hint: 'Enter your email',
          marginTop: 40,
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

      Widget loginButton() {
        return Container(
          width: double.infinity,
          height: 55,
          margin: EdgeInsets.only(
            top: 82,
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
              'Login',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
        );
      }

      Widget signUpButton() {
        return Container(
          margin: EdgeInsets.only(
            top: 100,
          ),
          child: TextButton(
            onPressed: () {},
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Don\'t have any Account? ',
                    style: blackTextStyle,
                  ),
                  TextSpan(
                    text: 'Sign Up',
                    style: redTextStyle,
                  ),
                ],
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: 270,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 28,
        ),
        width: double.infinity,
        height: 600,
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
                  'Login',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
            emailForm(),
            passwordForm(),
            loginButton(),
            signUpButton(),
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
