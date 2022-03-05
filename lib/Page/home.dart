import 'package:flutter/material.dart';
import 'package:test_flutter/data/recipe_data.dart';
import 'package:test_flutter/Components/trendingCard.dart';
import 'package:test_flutter/Components/recentCard.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 25),
        child: ListView(
          children: <Widget>[
            const Text("Take a look at those delicious recipes!", style: TextStyle(fontFamily: 'CircularStd', fontSize: 24, fontWeight: FontWeight.bold),),
            const SizedBox(height: 26,),
            const Text("Trending now 🔥", style: TextStyle(fontFamily: 'CircularStd', fontSize: 20, fontWeight: FontWeight.w600),),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: recipes.map((e) => TrendingCard(name: e.name, score: e.score, image: e.image)).toList(),
              ),
              scrollDirection: Axis.horizontal,
            ),
            const SizedBox(height: 35 - 10,),
            const Text("Recent recipes", style: TextStyle(fontFamily: 'CircularStd', fontSize: 20, fontWeight: FontWeight.w600),),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: recipes.map((e) => RecentCard(name: e.name, score: e.score, image: e.image)).toList(),
              ),
              scrollDirection: Axis.horizontal,
            ),
          ],
        ),
      )
    );
  }
}