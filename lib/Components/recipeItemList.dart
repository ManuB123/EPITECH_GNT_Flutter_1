import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_flutter/Components/starRating.dart';

class RecipeItemList extends StatelessWidget {
  const RecipeItemList({
    Key? key,
    required this.cover,
    required this.title,
    required this.rating,
    required this.author,
    // required this.press
  }): super (key: key);

  final String cover, title, author;
  final double rating;
  // final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container( child:
      Row(
      children: [
        Container(
        width: MediaQuery.of(context).size.width < 500 ? 125 : 250,
        height: MediaQuery.of(context).size.width < 500 ? 125 : 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(cover),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        ),
        Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: SizedBox(
                child: Column(
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'CircularStd',
                            fontWeight: FontWeight.bold)),
                    Text('By ' + author,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'CircularStd',
                            color: Color(0xffA9A9A9))),
                    StarRating(rating: rating),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                width: 150))
      ]),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Color(0xffC1C1C1))),
    ),
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    );
  }
}