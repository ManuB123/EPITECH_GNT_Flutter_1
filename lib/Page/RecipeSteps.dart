import 'package:flutter/material.dart';
import 'package:test_flutter/Components/recipeIngredientWidget.dart';
import 'package:test_flutter/Components/recipeStepsWidget.dart';
import '../model/recipe.dart';

import '../Components/recipeAuthorWidgets.dart';
import '../Components/recipeDetailsWidget.dart';
import '../Components/recipeIngredientWidget.dart';

class RecipeStepsPage extends StatelessWidget {
  final Recipe recipe;
  RecipeStepsPage({Key? key, required this.recipe}) : super(key: key);
  int index = 0;

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
            index < recipe.steps.length ? Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  recipe.steps[index],
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
            ) : ElevatedButton(
              onPressed: () {
                Navigator.pop(context); },
              child:
                const Text(
                  "Quit"
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                textStyle:
                MaterialStateProperty.all(const TextStyle(fontSize: 12))),
            ),
            index < recipe.steps.length ? ElevatedButton(
              onPressed: () {
                index += 1;
                (context as Element).markNeedsBuild();
              },
              child:
              const Text(
                  "Next"
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                  textStyle:
                  MaterialStateProperty.all(const TextStyle(fontSize: 12))),
            ) : Container(),
          ]
        )
      ),
    );
  }
}