import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wydatki/features/models/spendings_model.dart';

class SpendingsRepository {
  SpendingsRepository();

  Future<void> addSpending(
    String spendingsName,
    String shopName,
    String amountName,
  ) async {
    final docSpending =
        FirebaseFirestore.instance.collection('spendings').doc();
    final spending = SpendingModel(
      title: spendingsName,
      shop: shopName,
      amount: amountName,
      id: docSpending.id,
    );
    final json = spending.toJson();
    return docSpending.set(json);
  }
}
