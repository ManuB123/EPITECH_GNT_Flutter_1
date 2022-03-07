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
         child: Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.only(bottom: 0, right: 10, left: 0, top: 0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        ),
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