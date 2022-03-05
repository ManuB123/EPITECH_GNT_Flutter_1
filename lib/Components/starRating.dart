import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final Color color;

  const StarRating({this.starCount = 5, this.rating = .0, this.color = Colors.deepOrange});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star_border,
        color: color,
        size: 16,
      );
    }
    else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: color,
        size: 16,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: color,
        size: 16,
      );
    }
    return InkResponse(
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:0, bottom: 10, right: 4, top:10),
          child: Text(rating.toString(), style: const TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 12, fontFamily: 'CircularStd'),),
        ),
        Row(children: List.generate(starCount, (index) => buildStar(context, index)))
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }
}
