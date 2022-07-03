import 'package:cozy_findhouse/pages/home_page.dart';
import 'package:cozy_findhouse/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/404.png',
                width: 300,
              ),
              const SizedBox(
                height: 70,
              ),
              Text(
                'Where are you going?',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                'Seems like the page that you were\nrequested is already gone',
                textAlign: TextAlign.center,
                style: greykTextStyle,
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: (() => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                    (route) => false)),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: edge),
                  height: 50,
                  width: 210,
                  decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.circular(17)),
                  child: Center(
                      child: Text(
                    'Back to Home',
                    style: whiteTextStyle.copyWith(fontSize: 18),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
