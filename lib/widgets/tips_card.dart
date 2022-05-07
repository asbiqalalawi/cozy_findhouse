import 'package:flutter/material.dart';

import '../models/tips.dart';
import '../theme.dart';

class TipsCard extends StatelessWidget {
  const TipsCard({
    Key? key,
    required this.tips,
  }) : super(key: key);
  final Tips tips;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: SizedBox(
            height: 80,
            width: 80,
            child: Image.asset(
              tips.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              tips.updatedAt,
              style: greykTextStyle,
            )
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
