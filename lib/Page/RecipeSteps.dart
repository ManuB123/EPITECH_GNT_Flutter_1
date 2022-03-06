import 'package:flutter/material.dart';
import 'package:test_flutter/Components/recipeIngredientWidget.dart';
import 'package:test_flutter/Components/recipeStepsWidget.dart';
import '../model/recipe.dart';

import '../Components/recipeAuthorWidgets.dart';
import '../Components/recipeDetailsWidget.dart';
import '../Components/recipeIngredientWidget.dart';

class RecipeStepsPage extends StatelessWidget {
  final Recipe recipe;
  const RecipeStepsPage({Key? key, required this.recipe}) : super(key: key);


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
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "prouut",
                ),
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder (
                        borderRadius: BorderRadius.circular(32.0),
                        side: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        )
                    )
                )
            ),
          ]
        )
      ),
    );
  }
}