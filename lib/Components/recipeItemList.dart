import 'dart:ffi';

import 'package:flutter/material.dart';

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
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 10 / 2, horizontal: 10 / 4),
        child: Column(
          children: [
            const SizedBox(height: 10 / 2),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
      ),
    );
  }
}