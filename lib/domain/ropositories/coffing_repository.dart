import 'package:injectable/injectable.dart';
import 'package:wydatki/data/remote_data_sourse/category_remote_data_source.dart';
import 'package:wydatki/data/remote_data_sourse/spending_remote_data_source.dart';
import 'package:wydatki/domain/models/category_coffing.dart';

@injectable
class CoffingRepository {
  CoffingRepository(
    this.categoryRemoteDataSource,
    this.spendingRemoteDataSource,
  );

  final CategoryRemoteDataSource categoryRemoteDataSource;
  final SpendingRemoteDataSource spendingRemoteDataSource;

  Stream<List<CategoryModel>> getCategory() {
    return categoryRemoteDataSource.getAllDocsStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return CategoryModel.fromJson(doc.data());
      }).toList();
    });
  }

  Stream<List<SpendingModel>> getSpendingForCategoryId(String categoryId) {
    return spendingRemoteDataSource.getAllDocsStream().map((querySnapshot) {
      final allSpendings = querySnapshot.docs
          .map((doc) => SpendingModel.fromJson(doc.data()))
          .toList();
      return allSpendings
          .where((spending) => spending.categoryID == categoryId)
          .toList();
    });
  }

  Future<void> addCategory(
    String type,
  ) async {
    final docCategory = categoryRemoteDataSource.addCategory();
    final json = CategoryModel(type, docCategory.id).toJson();
    return docCategory.set(json);
  }
  
  Future<void> addSpending(
    String title,
    String shop,
    double amount,
    String categoryId,
  ) async {
    final docSpending = spendingRemoteDataSource.addSpending();
    final spending =
        SpendingModel(title, shop, amount, docSpending.id, categoryId);
    final json = spending.toJson();
    await docSpending.set(json);
  }

  Future<void> delete({required String id}) {
    return categoryRemoteDataSource.delete(id: id);
    
  }

  Future<void> remuve({required String id}) {
    return spendingRemoteDataSource.delete(id: id);
  }
}
