class RecipesModel {
  final int id;
  final String name;

  final int prepTimeMinutes;
  final int cookTimeMinutes;
  final int servings;
  final int caloriesPerServing;
  final String difficulty;
  final String cuisine;
  final String image;
  final num rating;

  RecipesModel({
    required this.id,
    required this.name,

    required this.prepTimeMinutes,
    required this.cookTimeMinutes,
    required this.servings,
    required this.caloriesPerServing,
    required this.difficulty,
    required this.cuisine,
    required this.image,
    required this.rating,
  });
  factory RecipesModel.fromJson(Map<String,dynamic>json) {
    return RecipesModel(id: json['id'],
        name: json['name'],

        prepTimeMinutes: json['prepTimeMinutes'],
        cookTimeMinutes: json['cookTimeMinutes'],
        servings: json['servings'],
        caloriesPerServing: json['caloriesPerServing'],
        difficulty: json['difficulty'],
        cuisine: json['cuisine'],
        image: json['image'],
        rating: json['rating']);
  }
}
