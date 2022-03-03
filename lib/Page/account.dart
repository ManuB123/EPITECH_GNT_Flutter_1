import 'package:flutter/material.dart';
import 'package:test_flutter/data/userData.dart';
import 'package:test_flutter/Components/userWidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:test_flutter/data/recipe_data.dart';

final List<Widget> imageSliders = Recipe_Lopes.recipes
    .map((item) => Container(
  child: Container(
    margin: const EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: Column(
          children: <Widget>[
            Flexible(flex: 2, child: Image.network(item.image, fit: BoxFit.cover, width: 1000.0)),
            Flexible(flex: 1, child:Row( children: [Text(item.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))])),
            Flexible(flex: 1, child: Row(
              children: const [
                Text('4.0', style: TextStyle(color: Colors.deepOrange, fontSize: 18 )),
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star_border, color: Colors.deepOrange),
              ],
            )),
          ],
        )),
  ),
))
    .toList();
class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}
class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    const user = Profile.user;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("My Profile", style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          UserWidget(
            image: user.image,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          Center(child: Text(user.name, style: const TextStyle(fontSize: 24))),
          const SizedBox(height: 24),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 48),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Text(user.description, style: const TextStyle(fontSize: 16, height: 1.4))
              ],
            ) ,
          ),
          const SizedBox(height: 24,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight (
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Text("Recipes"),
                        Text("3")
                      ],
                    ),
                    VerticalDivider(),
                    Column(
                      children: const [
                        Text("Followers"),
                        Text("160")
                      ],
                    ),
                    VerticalDivider(),
                    Column(
                      children: const [
                        Text("Following"),
                        Text("120")
                      ],
                    )
                  ],
                )
                ),
              ],
            ) ,
          ),
          const SizedBox(height: 24),
          const Divider(thickness: 2),
          const SizedBox(height: 24),
          Padding(padding: EdgeInsets.symmetric(horizontal: 48), child:const Text("My Recipes", style: TextStyle(fontSize: 24))),
          const SizedBox(height: 24),
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: imageSliders,
          ),
          const SizedBox(height: 24),
        ],
      )
    );
  }
}