import 'package:flutter/material.dart';
 
class FakeInput extends StatelessWidget {
  final String content;
 
  const FakeInput({
    Key? key,
    required this.content,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container(child: Text(content), decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0XffC1C1C1)),
        color: Colors.white,
      ),
      width: 335,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      margin: EdgeInsets.all(10));
  }
}