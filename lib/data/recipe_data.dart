import 'package:test_flutter/model/recipe.dart';

class Recipe_Lopes {
  List<String> steps = ["Ajouter du lopes"];
  Map<String, int > ingredients = { "lopes": 10 };

  static const recipes = [Recipe(image: "https://pbs.twimg.com/media/Ee6DZChXoAMePMe?format=jpg&name=large",
      author_name: "Alexis lopes", author_picture: "", score: 5, name: "Indonesian chicken burger", steps: ["Ajouter du lopes"], ingredients: { "lopes": 10 }, description: 'miam'),
    Recipe(image: "http://wishfulchef.com/wp-content/uploads/2011/10/ButternutSquashSoup.jpg",
        author_name: "Alexis lopes", author_picture: "", score: 5, name: "Butternut cream soup", steps: ["Ajouter du lopes"], ingredients: { "lopes": 10 }, description: 'miam'),
    Recipe(image: "https://www.aldi.com.au/fileadmin/fm-dam/images/Recipes/2020/July/ALN3145_WK30_PD_455x315__COOKED-SALMON-POKE-BOWL-RECIPE_.jpg",
        author_name: "Alexis lopes", author_picture: "", score: 5, name: "Grilled salmon pokebowl", steps: ["Ajouter du lopes"], ingredients: { "lopes": 10 }, description: 'miam')];
}