class Recipe {
  final String image;
  final String name;
  final String author_name;
  final String author_picture;
  final int score;
  final List<String> steps;
  final Map<String, int> ingredients;
  final String description;

  const Recipe({
    required this.image,
    required this.author_name,
    required this.author_picture,
    required this.name,
    required this.score,
    required this.steps,
    required this.ingredients,
    required this.description,
  });
}
