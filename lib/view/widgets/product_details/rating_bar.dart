import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarWidget extends StatelessWidget {
  const RatingBarWidget({
    Key? key,
    required this.rate,
  }) : super(key: key);

  final double rate;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rate,
      itemBuilder: (context, index) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      itemCount: 5,
      itemSize: 25.0,
      direction: Axis.horizontal,
    );
  }
}

// RatingBar.builder(
// minRating: 1,
// maxRating: 5,
// itemSize: 25,
// initialRating: rate,
// direction: Axis.horizontal,
// allowHalfRating: true,
// itemCount: 5,
// itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
// itemBuilder: (context, indicator) => const Icon(
// Icons.star,
// color: Colors.orangeAccent,
// ),
// onRatingUpdate: (rating) {
// // ignore: avoid_print
// },
// );
