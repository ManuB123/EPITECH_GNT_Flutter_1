import 'package:flutter/material.dart';
import 'package:test_flutter/Components/recipeItemList.dart';
import 'package:test_flutter/Components/starRating.dart';

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
        title: Text("Your Favorites", style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "You can add or delete favorites at any time",
              style: TextStyle(fontSize: 18),
            ),
            RecipeItemList(
              cover: '',
              title: 'Alfredo pasta',
              author: 'Agnes Dubois',
              rating: 4.2,
            ),
            StarRating(rating: 4.8),
          ],
        ),
      ),
    );
  }
}