import 'package:flutter/material.dart';
import '../model/recipe.dart';

List<Widget> getListStepsWidgetFromMap(List<String> data) {
  List<Widget> widgets = [];
  int count = 1;

  data.forEach((element) {
    widgets.add(RecipeSteps(index: count, text: element));
    count += 1;
  });

  return widgets;
}

class RecipeSteps extends StatelessWidget {
  final int index;
  final String text;
  const RecipeSteps({Key? key, required this.index, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              index.toString() + ".",
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.redAccent,
                  fontFamily: 'CircularStd',
                  fontWeight: FontWeight.bold),
            ),
          )
        ),
        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(15.0),
              child: Text(
                text,
              ),
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder (
                      borderRadius: BorderRadius.circular(32.0),
                      side: const BorderSide(
                        width: 1,
                        color: Colors.grey,
                      )
                  )
              )
          ),
        )
      ],
    );
  }
}