import 'package:flutter/material.dart';
import '../model/recipe.dart';

class ButtonState extends State<StatefulWidget> {
  Color _iconColor = Colors.white;

  @override
  Widget build(BuildContext) {
    return ListTile(
        leading: IconButton(
        icon: Icon(Icons.star, color: _iconColor),
        onPressed: () {
          setState(() {
          _iconColor = Colors.yellow;
        });
     },
    ));
  }
}

class RecipeDetailsHeader extends StatelessWidget {
  final bool isServe;
  final String unit;
  final int value;
  const RecipeDetailsHeader({Key? key, required this.isServe, required this.unit, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(15.0),
      decoration: ShapeDecoration(
          color: Color.fromARGB(255, 236, 236, 236),
          shape: RoundedRectangleBorder (
              borderRadius: BorderRadius.circular(32.0),
              side: BorderSide(
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
                  side: BorderSide(
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
              child: Text(
                value.toString() + unit,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.redAccent,
                    fontFamily: 'CircularStd',
                    fontWeight: FontWeight.bold),
              ),
            )
          )
        ],
      ),
    );
  }
}