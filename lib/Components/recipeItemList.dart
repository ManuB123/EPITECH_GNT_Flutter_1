import 'dart:ffi';

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
        width: 124,
        height: 124,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage("https://i.imgur.com/PziaatN.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        ),
        Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20), child: Column(children: [
          Text(title, style: const TextStyle(fontSize: 16, fontFamily: 'CircularStd', fontWeight: FontWeight.bold)),
          Text('By ' + author, style: const TextStyle(fontSize: 14, fontFamily: 'CircularStd', color: Color(0xffA9A9A9))),
          StarRating(rating: rating),
        ],))
      ]
    ),
   decoration: const BoxDecoration(
      border: Border(bottom: BorderSide(width: 1, color: Color(0xffC1C1C1))),
    ),
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    );
  }
}