import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:test_flutter/data/recipe_data.dart';
import 'package:test_flutter/Components/starRating.dart';

final List<Widget> imageSliders = Recipe_Lopes.recipes
    .map((item) => Container(
  child: Container(
    margin: const EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: Column(
          children: <Widget>[
            Flexible(flex: 2, child: Image.network(item.image, fit: BoxFit.cover, width: 1000.0)),
            Flexible(flex: 1, child:Row( children: [Text(item.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))])),
            Flexible(flex: 1, child: Row(
              children: const [
                StarRating(rating: 3.6),
              ],
            )),
          ],
        )),
  ),
))
    .toList();