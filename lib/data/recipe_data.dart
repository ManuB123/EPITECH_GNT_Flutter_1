import 'package:test_flutter/model/recipe.dart';

class Recipe_Lopes {
  List<String> steps = ["Ajouter du lopes"];
  Map<String, int > ingredients = { "lopes": 10 };

  static const recipe = Recipe(image: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.hervecuisine.com%2Fwp-content%2Fuploads%2F2020%2F05%2Frecette-clafoutis-facile-1024x685.jpg.webp&imgrefurl=https%3A%2F%2Fwww.hervecuisine.com%2Frecette%2Frecette-clafoutis-facile-aux-cerises%2F&tbnid=KAvSuvZo04PeWM&vet=12ahUKEwjHwortgIz2AhURxeAKHfqMD8sQMygAegUIARD2AQ..i&docid=vD5yHiZxGlLzAM&w=1024&h=685&q=clafoutis&ved=2ahUKEwjHwortgIz2AhURxeAKHfqMD8sQMygAegUIARD2AQ",
      author_name: "Alexis lopes", author_picture: "", score: 5, name: "clafoutis", steps: ["Ajouter du lopes"], ingredients: { "lopes": 10 }, description: 'miam');
}