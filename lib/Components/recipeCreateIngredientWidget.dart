import 'package:flutter/material.dart';
import '../model/recipe.dart';

class Pair {
  Pair(this.left, this.right);

  dynamic left;
  dynamic right;

  @override
  String toString() => 'Pair[$left, $right]';
}

class RecipeCreateIngredient extends StatelessWidget {
  String ingredient = "";
  String value = "";
  final void Function(String data, String value) onClicked;
  final void Function() onDelete;
  RecipeCreateIngredient({Key? key, required this.onClicked, required this.onDelete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                onChanged: (text) { ingredient = text; onClicked(ingredient, value); },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingredient',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                onChanged: (text) { value = text; onClicked(ingredient, value); },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Quantity',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: CloseButton(
                onPressed: () { onDelete(); },
              ),
            ),
          ),
        ],
      );
  }
}