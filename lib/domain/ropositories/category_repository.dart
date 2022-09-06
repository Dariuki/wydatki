import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wydatki/domain/models/category_model.dart';

class CategoriesRepository {
  Stream<List<CategoryModel>> getCategoryStream() {
    return FirebaseFirestore.instance
        .collection('categories')
        .orderBy('type')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return CategoryModel(
          type: doc['type'],
          id: doc.id,
        );
      }).toList();
    });
  }

  Future<void> addCategory(
    String type,
  ) async {
    final docCategory =
        FirebaseFirestore.instance.collection('categories').doc();
    final category = CategoryModel(type: type, id: docCategory.id);
    final json = category.toJson();
    await docCategory.set(json);
  }

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance.collection('categories').doc(id).delete();
  }

  Future<CategoryModel> get({required String id}) async {
    final doc =
        await FirebaseFirestore.instance.collection('categories').doc(id).get();
    return CategoryModel(
      type: doc['type'],
      id: doc.id,
    );
  }
}
