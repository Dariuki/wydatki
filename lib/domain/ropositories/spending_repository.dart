import 'package:wydatki/data/remote_data_sourse/spending_remote_data_source.dart';
import 'package:wydatki/domain/models/spendings_model.dart';

class SpendingsRepository {
  SpendingsRepository(this._spendingRemoteDataSource);

  final SpendingRemoteDataSource _spendingRemoteDataSource;

  Stream<List<SpendingModel>> getSpendingForCategoryId(String categoryId) {
    return _spendingRemoteDataSource.getAllDocsStream().map((querySnapshot) {
      final allSpendings = querySnapshot.docs
          .map((doc) => SpendingModel.fromJson(doc.data()))
          .toList();
      return allSpendings
          .where((spending) => spending.categoryID == categoryId)
          .toList();
    });
  }

  

  Future<void> addSpending(
    String title,
    String shop,
    double amount,
    String categoryId,
  ) async {
    final docSpending = _spendingRemoteDataSource.addSpending();
    final spending = SpendingModel(
        title: title,
        shop: shop,
        amount:amount,
        id: docSpending.id,
        categoryID: categoryId);
    final json = spending.toJson();
    await docSpending.set(json);
  }

  Future<void> delete({required String id}) {
    return _spendingRemoteDataSource.delete(id: id);
  }



}
