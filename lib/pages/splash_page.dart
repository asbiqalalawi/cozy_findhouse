import 'package:cozy_findhouse/theme.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/splash_image.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 50,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Find Cozy House\nto Stay and Happy',
                    style: blackTextStyle.copyWith(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                    style: greykTextStyle.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        )),
                    child: Container(
                      height: 50,
                      width: 210,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: purpleColor),
                      child: Center(
                          child: Text(
                        'Explore Now',
                        style: whiteTextStyle.copyWith(fontSize: 18),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
