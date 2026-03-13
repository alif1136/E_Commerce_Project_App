class Category {

  final int id;
  final String name;
  final String image;

  Category({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Category.fromJson(Map json) {
    return Category(
      id: json['id'],
      name: json['categoryName'],
      image: json['categoryImg'],
    );
  }
}