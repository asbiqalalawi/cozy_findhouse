import 'package:cozy_findhouse/theme.dart';
import 'package:flutter/material.dart';

import '../models/city.dart';
import '../widgets/city_card.dart';
import '../widgets/space_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: edge),
          children: [
            // Explore Now
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(fontSize: edge),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                'Mencari kosan yang cozy',
                style: greykTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Popular Cities
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/city1.png',
                        isPopular: false),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/city2.png',
                        isPopular: true),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/city3.png',
                        isPopular: false),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Recommended Space
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListView(
              padding: EdgeInsets.symmetric(horizontal: edge),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: const [SpaceCard()],
            )
          ],
        ),
      ),
    );
  }
}
