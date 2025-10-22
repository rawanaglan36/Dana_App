class GallaryModel {
  final String center;
  final String description;
  final String description508;
  final String imageUrl;

  GallaryModel({
    required this.center,
    required this.description,
    required this.description508,
    required this.imageUrl,
  });

  factory GallaryModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'][0];
    final links = json['links'] as List?;
    final imageUrl = (links != null && links.isNotEmpty)
        ? links[0]['href']
        : '';

    return GallaryModel(
      center: data['center'] ?? '',
      description: data['description'] ?? '',
      description508: data['description_508'] ?? '',
      imageUrl: imageUrl,
    );
  }
}
