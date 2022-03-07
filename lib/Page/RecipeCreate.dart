import 'package:flutter/material.dart';
import 'package:test_flutter/Components/FakeInput.dart';
import 'package:test_flutter/Components/recipeDetailsWidget.dart';

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
        title: const Text("Create a new recipe", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: Center(child: SingleChildScrollView(child: Container(child: Column(children: [
        Container(width: 335, height: 212,  decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage('https://i.imgur.com/8zuAgNl.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        )),
      const FakeInput(content: 'Title of Recipe'),
      const RecipeDetailsHeader(isServe: true, unit: 'p', value: 2),
      const RecipeDetailsHeader(isServe: false, unit: 'm', value: 40),
      Container(child: Text('Ingredients', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)), margin: EdgeInsets.all(10)),
      const FakeInput(content: 'Beef'),
      const FakeInput(content: 'Rice'),
      const FakeInput(content: 'Oignons'),
      const Text('+ Add new ingredient', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.redAccent)),
      Container(child: Text('Steps', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)), margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10)),
      const FakeInput(content: 'Wash the rice until water runs clear.'),
      const FakeInput(content: 'Cut the beef into strips then sears it in a pan. '),
      const Text('+ Add new step', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.redAccent)),
      Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child:
                  const Text(
                    "Create recipe"
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                      padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                      textStyle:
                      MaterialStateProperty.all(const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'CircularStd', fontSize: 16))),
                ),
            )])),
    )));
  }
}