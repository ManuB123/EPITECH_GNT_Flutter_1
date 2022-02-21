class Recipe {
  final String image;
  final String name;
  final List<String> steps;
  final Map<String, int> ingredients;
  final String description;

  const Recipe({
    required this.image,
    required this.name,
    required this.steps,
    required this.ingredients,
    required this.description,
  });
}
