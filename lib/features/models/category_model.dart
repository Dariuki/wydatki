class CategoryModel {
  final String type;
  String id;
  

  CategoryModel({
    required this.type,
    this.id = '',
  });
  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
      };
}
