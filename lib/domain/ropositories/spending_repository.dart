import 'package:injectable/injectable.dart';
import 'package:wydatki/data/remote_data_sourse/spending_remote_data_source.dart';
import 'package:wydatki/domain/models/coffing/spending_model.dart';

@injectable
class SpendingsRepository {
  SpendingsRepository({required this.spendingRemoteDataSource});

  final SpendingRemoteDataSource spendingRemoteDataSource;

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

  Future<void> addSpending(
    String shop,
    double amount,
    String categoryId,
    
  ) async {
    final docSpending = spendingRemoteDataSource.addSpending();
    final spending =
        SpendingModel(shop, amount, docSpending.id, categoryId,);
    final json = spending.toJson();
    await docSpending.set(json);
  }

  Future<void> remove({required String id}) {
    return spendingRemoteDataSource.delete(id: id);
  }
}
