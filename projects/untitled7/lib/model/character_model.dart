class CharacterModel {
  final String name;
  final String status;
  final String species;
  final String gender;
  final String image;

  final int id;

  CharacterModel({
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.image,

    required this.id,
  });
  factory CharacterModel.fromJson(Map<String,dynamic>json) {
    return CharacterModel(name: json['name'],
        status: json['status'],
        species: json['species'],
        gender: json['gender'],
        image: json['image'],
        id: json['id']);
  }
}
