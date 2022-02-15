import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("favorite"),
      ),
      body: Center(child: Text('Favorite', style: TextStyle(fontSize: 60))),
    );
  }
}