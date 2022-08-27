import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wydatki/features/models/category_model.dart';

class CategoriesRepository {
  CategoriesRepository();
  
 
  Future addCategory(
    String type,
  ) async {
     final docCategory =
          FirebaseFirestore.instance.collection('categories').doc();
      final category = CategoryModel(type: type, id: docCategory.id);
      final json = category.toJson();
      await docCategory.set(json);
    
  }
  
}
