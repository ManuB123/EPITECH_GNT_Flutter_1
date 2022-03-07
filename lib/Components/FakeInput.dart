import 'package:flutter/material.dart';
 
class FakeInput extends StatelessWidget {
  final String content;
 
  const FakeInput({
    Key? key,
    required this.content,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: const Color(0XffC1C1C1)),
          ),
      
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                content,
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'CircularStd',
                    fontWeight: FontWeight.bold),
              ),
            )
          ),
        ],
      ),
    );
  }}