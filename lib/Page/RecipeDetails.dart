import 'package:flutter/material.dart';
import '../model/recipe.dart';

import '../Components/recipeAuthorWidgets.dart';
import '../Components/recipeDetailsWidget.dart';

class RecipeDetails extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetails({Key? key, required this.recipe}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(recipe.name, style: const TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold)),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              child: Padding(padding:
                const EdgeInsets.fromLTRB(45, 0, 35, 10),
                child: Image.network(recipe.image, width: 300, height: 150, fit: BoxFit.cover)
              ),
            ),
            Container(
              child: Padding(padding:
              const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: RecipeAuthor(image: recipe.author_picture, name: recipe.author_name, note: recipe.score)
              ),
            ),
            const Padding(padding:
              EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: RecipeDetailsHeader(isServe: true, value: 2, unit: "p",),
            ),
            Container(
              child: const RecipeDetailsHeader(isServe: false, value: 15, unit: "mn",),
            ),
            const Padding(padding: EdgeInsets.only(left: 15), child: Text(
              "Ingredients",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontFamily: 'CircularStd',
                  fontWeight: FontWeight.bold),
            ))
          ]
        )
      ),
    );
  }
}