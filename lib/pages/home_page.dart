import 'package:cozy_findhouse/provider/space_provider.dart';
import 'package:cozy_findhouse/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/city.dart';
import '../models/space.dart';
import '../models/tips.dart';
import '../widgets/bottom_navigation_item.dart';
import '../widgets/city_card.dart';
import '../widgets/space_card.dart';
import '../widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);

    return Scaffold(
      backgroundColor: whiteColor,
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: FutureBuilder<List<Space>>(
                  future: spaceProvider.getRecommendedSpace(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Space> space = snapshot.data!;

                      int index = 0;

                      return Column(
                        children: space.map((e) {
                          index++;
                          return Container(
                            margin: EdgeInsets.only(top: index == 1 ? 0 : 30),
                            child: SpaceCard(space: e),
                          );
                        }).toList(),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            // Tips & Guidance
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                'Tips & Guidance',
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
              children: [
                TipsCard(
                  tips: Tips(
                      id: 1,
                      imageUrl: 'assets/tips1.png',
                      title: 'City Guidelines',
                      updatedAt: 'Updated 20 Apr'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TipsCard(
                  tips: Tips(
                      id: 2,
                      imageUrl: 'assets/tips2.png',
                      title: 'Jakarta Fairship',
                      updatedAt: 'Updated 11 Dec'),
                ),
              ],
            ),
            SizedBox(
              height: 50 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
          color: const Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottonNavbarItem(imageUrl: 'assets/home_icon.png', isActive: true),
            BottonNavbarItem(imageUrl: 'assets/mail_icon.png', isActive: false),
            BottonNavbarItem(imageUrl: 'assets/card_icon.png', isActive: false),
            BottonNavbarItem(imageUrl: 'assets/love_icon.png', isActive: false),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
