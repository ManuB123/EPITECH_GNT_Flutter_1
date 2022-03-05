import 'package:flutter/material.dart';
import 'package:test_flutter/Components/recipeItemList.dart';
import 'package:test_flutter/Components/starRating.dart';
import 'package:test_flutter/data/recipe_data.dart';

class Favorite extends StatefulWidget {
  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Your favorites", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "You can add or delete favorites at any time",
              style: TextStyle(fontSize: 16, color: Color(0xffC1C1C1), fontFamily: 'CircularStd'),
            ),
            SingleChildScrollView(
              child: Column(children: recipes.map((e) => RecipeItemList(cover: e.image, title: e.name, rating: e.score, author: e.author_name)).toList())
            )
          ],
        ),
      ),
    );
  }
}