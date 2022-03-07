import 'package:flutter/material.dart';
import '../model/recipe.dart';
import './recipeCreateIngredientWidget.dart';

class IngredientList extends StatefulWidget {
  List<Pair> ingredients = [];
  IngredientList();

  @override
  _IngredientListState createState() => new _IngredientListState();

}

class _IngredientListState extends State<IngredientList> {
  bool loading = true;
  List<Widget> listArray = [];

  _IngredientListState(){
    widget.ingredients.forEach((element) {

      listArray.add(RecipeCreateIngredient(onDelete: () {}, onClicked: (text, value) {},));

      setState((){
          loading = false;
        });

    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        child: ListView(
          shrinkWrap: true,
            children: loading?[] : listArray
        ));

  }

}