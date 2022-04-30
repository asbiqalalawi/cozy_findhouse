import 'package:flutter/material.dart';

import '../theme.dart';

class SpaceCard extends StatelessWidget {
  const SpaceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: SizedBox(
            height: 110,
            width: 130,
            child: Stack(
              children: [
                Image.asset(
                  'assets/space1.png',
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
                          '4/5',
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
        Column(
          children: [
            Text(
              'Kuretakeso Hott',
              style: blackTextStyle.copyWith(fontSize: 18),
            )
          ],
        )
      ],
    );
  }
}
