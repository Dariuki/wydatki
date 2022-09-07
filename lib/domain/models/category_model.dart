class CategoryModel {
  String type;
  String id;

  CategoryModel({
    this.type = '',
    this.id = '',
  });
  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
      };

  CategoryModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        type = json['type'];
}
