class SpendingModel {
  final String title;
  final String shop;
  final String amount;
  final String id;
  final String categoryID;

  SpendingModel({
    required this.title,
    required this.shop,
    required this.amount,
    this.id = '',
    this.categoryID = '',
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'shop': shop,
        'amount': amount,
        'categoryID': categoryID,
      };

  SpendingModel.fromJson(Map<String, dynamic> json)
      : amount = json['amount'],
        title = json['title'],
        shop = json['shop'],
        id = json['id'],
        categoryID = json['categoryID'];
}
