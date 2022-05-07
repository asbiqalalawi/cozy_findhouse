import 'package:flutter/material.dart';

import '../theme.dart';

class BottonNavbarItem extends StatelessWidget {
  const BottonNavbarItem({
    Key? key,
    required this.imageUrl,
    required this.isActive,
  }) : super(key: key);
  final String imageUrl;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        const Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 4,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: BorderRadius.circular(1000),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
