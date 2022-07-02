import 'package:cozy_findhouse/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  const FacilityItem(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.total})
      : super(key: key);
  final String name;
  final String imageUrl;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '$total ',
            style: purpleTextStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(
                  text: name, style: greykTextStyle.copyWith(fontSize: 14)),
            ],
          ),
        ),
      ],
    );
  }
}
