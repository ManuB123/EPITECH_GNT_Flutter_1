import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_flutter/data/recipe_data.dart';

class RecipeModel extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Recipe> _suggestions = [];
  List<Recipe> get suggestions => _suggestions;

  String _query = '';
  String get query => _query;

  void onQueryChanged(String query) async {
    print(query);
    if (query == _query) return;

    _query = query;
    _isLoading = true;
    notifyListeners();

    if (query.isEmpty) {

    } else {
      _suggestions = Recipe_Lopes.recipes.toList().where((element) => element.name.toLowerCase().contains(query)).toList();
    }

    _isLoading = false;
    notifyListeners();
  }

  void clear() {
    _suggestions = [];
    notifyListeners();
  }
}

class Recipe {
  final String image;
  final String name;
  final String author_name;
  final String author_picture;
  final double score;
  final List<String> steps;
  final Map<String, int> ingredients;
  final String description;

  const Recipe({
    required this.image,
    required this.author_name,
    required this.author_picture,
    required this.name,
    required this.score,
    required this.steps,
    required this.ingredients,
    required this.description,
  });
}
