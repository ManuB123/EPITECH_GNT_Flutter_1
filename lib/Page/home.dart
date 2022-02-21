import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Home", style: TextStyle(color: Colors.black)),
      ),
      body: Center(child: Text('Home', style: TextStyle(fontSize: 60))),
    );
  }
}