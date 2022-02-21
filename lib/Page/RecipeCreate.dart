import 'package:flutter/material.dart';

class RecipeCreate extends StatefulWidget {
  @override
  State<RecipeCreate> createState() => _RecipeCreateState();
}

class _RecipeCreateState extends State<RecipeCreate> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Add recipe", style: TextStyle(color: Colors.black)),
      ),
      body: Center(child: Text('Add recipe', style: TextStyle(fontSize: 60))),
    );
  }
}