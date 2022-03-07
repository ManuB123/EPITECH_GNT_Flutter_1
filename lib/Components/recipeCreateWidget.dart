import 'package:flutter/material.dart';
import '../model/recipe.dart';

class RecipeCreateHeader extends StatelessWidget {
  final bool isServe;
  String value;
  RecipeCreateHeader({Key? key, required this.isServe, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(15.0),
      decoration: ShapeDecoration(
          color: const Color.fromARGB(255, 236, 236, 236),
          shape: RoundedRectangleBorder (
              borderRadius: BorderRadius.circular(32.0),
              side: const BorderSide(
                  width: 10,
                  color: Color.fromARGB(0, 236, 236, 236),
              )
          )
      ),
      child: Row(
        children: [
          Expanded(
            flex: 0,
            child: Container(
                decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    width: 5,
                    color: Colors.white,
                  )
                )
              ),
              child: Icon(
                isServe == true ? Icons.people : Icons.lock_clock,
                color: Colors.red,
                size: 30.0,
              ),
            )
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                isServe == true ? "Serves" : "Cook time",
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'CircularStd',
                    fontWeight: FontWeight.bold),
              ),
            )
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: TextField(
                onChanged: (text) { value = text; },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '',
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}