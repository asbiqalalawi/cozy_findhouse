import 'package:cozy_findhouse/pages/detail_page.dart';
import 'package:flutter/material.dart';

import '../models/space.dart';
import '../theme.dart';

class SpaceCard extends StatelessWidget {
  const SpaceCard({
    Key? key,
    required this.space,
  }) : super(key: key);
  final Space space;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(space: space),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox(
              height: 110,
              width: 130,
              child: Stack(
                children: [
                  Image.network(
                    space.imageUrl,
                    height: 110,
                    width: 130,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: const BorderRadiusDirectional.only(
                              bottomStart: Radius.circular(36))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon_star.png',
                            width: 16,
                            height: 16,
                          ),
                          Text(
                            '${space.rating}/5',
                            style: whiteTextStyle.copyWith(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  space.name,
                  style: blackTextStyle.copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text.rich(
                  TextSpan(
                    text: '\$${space.price}',
                    style: purpleTextStyle.copyWith(fontSize: 16),
                    children: [
                      TextSpan(
                          text: '/ month',
                          style: greykTextStyle.copyWith(fontSize: 16)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '${space.city}, ${space.country}',
                  style: greykTextStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
