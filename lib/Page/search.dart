import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Search", style: TextStyle(color: Colors.black)),
      ),
      body: Center(child: Text('Search', style: TextStyle(fontSize: 60))),
    );
  }
}