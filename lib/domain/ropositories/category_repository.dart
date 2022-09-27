
import 'package:wydatki/data/remote_data_sourse/category_remote_data_source.dart';
import 'package:wydatki/domain/models/category_model.dart';

class CategoriesRepository {
  CategoriesRepository(this._categoryRemoteDataSource);
  final CategoryRemoteDataSource _categoryRemoteDataSource;

  Stream<List<CategoryModel>> getCategory() {
    return _categoryRemoteDataSource.getAllDocsStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return CategoryModel.fromJson(doc.data());
      }).toList();
    });
  }

  Future<void> addCategory(
    String type,
  ) async {
    final docCategory = _categoryRemoteDataSource.addCategory();
    final category = CategoryModel(type, docCategory.id);
    final json = category.toJson();
    return docCategory.set(json);
  }

  Future<void> delete({required String id}) {
    return _categoryRemoteDataSource.delete(id: id);
  }
}
