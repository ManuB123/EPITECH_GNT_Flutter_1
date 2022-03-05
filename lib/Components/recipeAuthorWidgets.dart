import 'package:flutter/material.dart';
import 'package:test_flutter/Components/starRating.dart';

import '../model/recipe.dart';
import '../Page/RecipeDetails.dart';
import './recipeDetailsWidget.dart';

class RecipeAuthor extends StatelessWidget {
  final String image;
  final String name;
  final double note;

  const RecipeAuthor({
    Key? key,
    required this.image,
    required this.name,
    required this.note,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
       Expanded(
         flex: 0,
         child: Image(context),
       ),
        Expanded(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'CircularStd',
                    fontWeight: FontWeight.bold),
                ),
                StarRating(rating: note),
              ],
            ),
        ),
      ],
    );
  }

  Widget Image(BuildContext context) {
    final myImage = NetworkImage(image);
    return ClipRect(

      child: Padding(
        padding: EdgeInsets.all(5),
        child: Material(
          color: Colors.transparent,
          child: Ink.image(
            image: myImage,
            width: 64,
            height: 64,
            child: InkWell(onTap: () {
            }),
          ),
        ),
      )
    );
  }
}