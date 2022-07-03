import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({Key? key, required this.index, required this.rating})
      : super(key: key);
  final int index;
  final int rating;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/icon_star.png',
      width: 20,
      color: index <= rating ? null : const Color(0xff989BA1),
    );
  }
}
