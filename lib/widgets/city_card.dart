import 'package:flutter/material.dart';

import '../models/city.dart';
import '../theme.dart';

class CityCard extends StatelessWidget {
  const CityCard({
    Key? key,
    required this.city,
  }) : super(key: key);

  final City city;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(children: [
          Stack(
            children: [
              Image.asset(
                city.imageUrl,
                height: 102,
                width: 120,
                fit: BoxFit.cover,
              ),
              city.isPopular
                  ? Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: const BorderRadiusDirectional.only(
                                bottomStart: Radius.circular(36))),
                        child: Center(
                          child: Image.asset(
                            'assets/icon_star.png',
                            width: 16,
                            height: 16,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          Text(
            city.name,
            style: blackTextStyle.copyWith(fontSize: 16),
          )
        ]),
      ),
    );
  }
}
