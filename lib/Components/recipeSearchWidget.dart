import 'package:flutter/material.dart';

import '../model/recipe.dart';

List<Widget> recipeSearchfromList(List<Recipe> recipes) {
  final List<Widget> list = [];

  recipes.forEach((element) {
    list.add(RecipeSearchItemWidget(onClicked: () async {}, image: element.image, name: element.name, author: element.author_name, note: element.score));
    print(element);
  });

  return list;
}

class RecipeSearchItemWidget extends StatelessWidget {
  final VoidCallback onClicked;
  final String image;
  final String name;
  final String author;
  final int note;
  final bool isFav = false;

  const RecipeSearchItemWidget({
    Key? key,
    required this.onClicked,
    required this.image,
    required this.name,
    required this.author,
    required this.note,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
       Expanded(
         flex: 2,
         child: Padding(
           padding: const EdgeInsets.all(7.0),
           child: Image(),
         ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "By " + author,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
                StarDisplay(note),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: IconButton(
              color: Colors.redAccent,
              icon: const Icon(Icons.favorite),
              onPressed: () {
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget Image() {
    final myImage = NetworkImage(image);
    return ClipRect(

      child: Padding(
        padding: EdgeInsets.all(5),
        child: Material(
          color: Colors.transparent,
          child: Ink.image(
            image: myImage,
            width: 128,
            height: 128,
            fit: BoxFit.cover,
            child: InkWell(onTap: onClicked,),
          ),
        ),
      )
    );
  }

  Widget StarDisplay(int input) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < input ? Icons.star : Icons.star_border,
          color: Colors.redAccent,
        );
      }),
    );
  }
}
