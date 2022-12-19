import 'package:injectable/injectable.dart';
import 'package:wydatki/data/remote_data_sourse/category_remote_data_source.dart';
import 'package:wydatki/domain/models/category_coffing.dart';

@injectable
class CategoriesRepository {
  CategoriesRepository({required this.categoryRemoteDataSource});
  final CategoryRemoteDataSource categoryRemoteDataSource;

  Stream<List<CategoryModel>> getCategory() {
    return categoryRemoteDataSource.getAllDocsStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return CategoryModel.fromJson(doc.data());
      }).toList();
    });
  }

  Future<void> addCategory(
    String type,
  ) async {
    final docCategory = categoryRemoteDataSource.addCategory();
    final json = CategoryModel(type, docCategory.id).toJson();
    return docCategory.set(json);
  }

  Future<void> delete({required String id}) {
    return categoryRemoteDataSource.delete(id: id);
  }

  
}
