import 'package:flutter/material.dart';
import 'Page/home.dart';
import 'Page/favorite.dart';
import 'Page/account.dart';
import 'Page/search.dart';
import 'Page/RecipeCreate.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(
  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Colors.white,
    ),
    home: const MyHomePage(title: 'Flutter Demo Home Page'),
    )
  );
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screens = [
    Home(),
    Search(),
    Favorite(),
    RecipeCreate(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() =>currentIndex = index ),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.black),
            label: 'Home',
            backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search , color: Colors.black),
              label: 'Search',
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined, color: Colors.black),
              label: 'Favorite',
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined, color: Colors.black),
              label: 'Add Recipe',
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined, color: Colors.black),
              label: 'Account',
              backgroundColor: Colors.white
          )
        ],
      ),
    );
  }
}