import 'package:flutter/material.dart';
import 'package:test_flutter/Components/recipeCreateIngredientWidget.dart';
import 'package:test_flutter/Components/recipeCreateWidget.dart';
import 'package:test_flutter/Components/recipeIngredientWidget.dart';
import 'package:test_flutter/Components/recipeStepsWidget.dart';
import '../model/recipe.dart';

import '../Components/recipeAuthorWidgets.dart';
import '../Components/recipeDetailsWidget.dart';
import '../Components/recipeIngredientWidget.dart';
import '../Components/recipeCreateListIngredientWidget.dart';
import './RecipeSteps.dart';

class RecipeCreate extends StatelessWidget {
  RecipeCreate({Key? key, required this.recipe}) : super(key: key);
  final Recipe recipe;
  List<Pair> ingredients = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Create your recipe", style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold)),
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
                  child: TextField(
                    onChanged: (text) { recipe.name = text; },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Title of the recipe',
                    ),
                  ),
                ),
                Padding(padding:
                  const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: RecipeCreateHeader(isServe: true, value: "01",),
                ),
                Container(
                  child: RecipeCreateHeader(isServe: false, value: "45 mn",),
                ),
                const Padding(padding: EdgeInsets.only(left: 15), child: Text(
                  "Ingredients",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontFamily: 'CircularStd',
                      fontWeight: FontWeight.bold),
                )),
                IngredientList(),
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