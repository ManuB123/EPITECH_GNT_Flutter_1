import 'package:test_flutter/model/recipe.dart';
import 'package:localstorage/localstorage.dart';

class Recipe_Lopes {
  List<String> steps = ["Ajouter du lopes"];
  Map<String, int > ingredients = { "lopes": 10 };

  static final recipes = [Recipe(image: "https://pbs.twimg.com/media/Ee6DZChXoAMePMe?format=jpg&name=large",
      author_name: "Alexis lopes", author_picture: "https://media-exp1.licdn.com/dms/image/C5603AQFxIX8VwOWAIQ/profile-displayphoto-shrink_200_200/0/1554474920022?e=1651708800&v=beta&t=KUs4DbdmzeBuRztgzOhzoLRXVR-YVpuPhTYv2jgCqaE", score: 3.6, name: "Indonesian chicken burger", steps: ["Ajouter du lopes", "Mettre un peu de eydouaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"], ingredients: { "lopes": 10 }, description: 'miam', isLiked: false),
    Recipe(image: "http://wishfulchef.com/wp-content/uploads/2011/10/ButternutSquashSoup.jpg",
        author_name: "Alexis lopes", author_picture: "https://media-exp1.licdn.com/dms/image/C5603AQFxIX8VwOWAIQ/profile-displayphoto-shrink_200_200/0/1554474920022?e=1651708800&v=beta&t=KUs4DbdmzeBuRztgzOhzoLRXVR-YVpuPhTYv2jgCqaE", score: 4.9, name: "Butternut chicken soup", steps: ["Ajouter du lopes"], ingredients: { "lopes": 10 }, description: 'miam', isLiked: false),
    Recipe(image: "https://www.aldi.com.au/fileadmin/fm-dam/images/Recipes/2020/July/ALN3145_WK30_PD_455x315__COOKED-SALMON-POKE-BOWL-RECIPE_.jpg",
        author_name: "Alexis lopes", author_picture: "https://media-exp1.licdn.com/dms/image/C5603AQFxIX8VwOWAIQ/profile-displayphoto-shrink_200_200/0/1554474920022?e=1651708800&v=beta&t=KUs4DbdmzeBuRztgzOhzoLRXVR-YVpuPhTYv2jgCqaE", score: 5, name: "Grilled salmon pokebowl", steps: ["Ajouter du lopes" ,  "Mettre un peu de eydouaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"], ingredients: { "lopes": 10 }, description: 'miam', isLiked: false)];
}

class LocalRecipe {
  Future<List<Recipe>> getListRecipes() async {
    final LocalStorage storage = LocalStorage('recipes');
    dynamic data = storage.getItem('recipe');
    var ready = await storage.ready;

    if (data == null) {
      data = recipes;
      await storage.setItem('recipe', data);
    }

    return data;
  }

  void addRecipe(Recipe recipe) async {
    final LocalStorage storage = LocalStorage('recipes');
    var ready = await storage.ready;
    List<Recipe> data = storage.getItem('recipe');
    data.add(recipe);

    await storage.setItem('recipe', data);
  }

  void updateRecipe(Recipe recipe) async {
    final LocalStorage storage = LocalStorage('recipes');
    List<Recipe> data = storage.getItem('recipe');

    data.forEach((element) {
      if (element.name == recipe.name) {
        element.isLiked = recipe.isLiked;
      }
    });

    await storage.setItem('recipe', data);
  }
}

final recipes = [
  Recipe(
  image: 'https://i.imgur.com/PziaatN.jpg',
  author_name: 'Agnès Dubois',
  author_picture: '',
  score: 4.2,
  name: 'French toast with maple syrup',
  steps: ['Cut the bread into slices', 'Whisk the eggs', 'Dip bread into egg mixture', 'Fry bread on both sides on a pan', 'Serve with maple syrup'],
  ingredients: {'bread': 1, 'eggs': 2, 'maple syrup': 1},
  description: '', isLiked: false),
  Recipe(
  image: 'https://i.imgur.com/YUlkq0T.png',
  author_name: 'Dominique Goncalvez',
  author_picture: '',
  score: 2.3,
  name: 'Beef meatballs',
  steps: ['Cut onions finely', 'Roll minced beef and onions into balls (2cm wide approx.)', 'Cook on pan at medium heat'],
  ingredients: {'Minced beef': 200, 'Onions': 2},
  description: '',
  isLiked: false),
  Recipe(
  image: 'https://i.imgur.com/4hSfKhF.png',
      author_name: 'Carmel Esposita',
      author_picture: '',
      score: 5.0,
      name: 'Red wine lamb with broccolis',
      steps: ['Steam the broccolis', 'Make a sauce with the redwine', 'Cook lamb', 'Assemble ingredients and serve'],
      ingredients: {'Broccolis': 200, 'Lamb Rib': 1, 'Red Wine': 20},
      description: '', isLiked: false),
  Recipe(
  image: 'https://i.imgur.com/lmbuViv.jpg',
      author_name: 'Jack O\'Brian',
      author_picture: '',
      score: 3.8,
      name: 'Creamy curry salmon',
      steps: ['Cut salmon', 'Cook salmon', 'Serve with sauce'],
      ingredients: {'Salmon': 100, 'Curry': 1, 'Cream': 20},
      description: '', isLiked: false),
];