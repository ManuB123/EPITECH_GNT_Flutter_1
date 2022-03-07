import 'package:flutter/material.dart';
import 'package:test_flutter/Components/recipeIngredientWidget.dart';
import 'package:test_flutter/Components/recipeStepsWidget.dart';
import '../model/recipe.dart';

import '../Components/recipeAuthorWidgets.dart';
import '../Components/recipeDetailsWidget.dart';
import '../Components/recipeIngredientWidget.dart';
import './RecipeSteps.dart';

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
                child: Image.network(recipe.image, width: 300, height: MediaQuery.of(context).size.width < 500 ? 150 : 300, fit: BoxFit.cover)
              ),
            ),
            Container(
              child: Padding(padding:
              const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: RecipeAuthor(image: recipe.author_picture, name: recipe.author_name, note: recipe.score)
              ),
            ),
            const Padding(padding:
              EdgeInsets.fromLTRB(0, 5, 0, 0),
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
            )),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: getListIngredientsWidgetFromMap(recipe.ingredients),
            ),
            const Padding(padding: EdgeInsets.only(left: 15), child: Text(
              "Steps",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontFamily: 'CircularStd',
                  fontWeight: FontWeight.bold),
            )),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: getListStepsWidgetFromMap(recipe.steps),
            ),
            Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RecipeStepsPage(recipe: recipe)),
                    );
                  },
                  child:
                  const Text(
                    "Read step by step"
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                      padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                      textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 12))),
                ),
            ),
          ]
        )
      ),
    );
  }
}