import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wydatki/domain/models/spendings_model.dart';

class SpendingsRepository {
  Stream<List<SpendingModel>> getSpendingStream() {
    return FirebaseFirestore.instance
        .collection('spendings')
        .orderBy('title')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return SpendingModel(
          title: doc['title'],
          shop: doc['shop'],
          amount: doc['amount'],
          id: doc.id,
        );
      }).toList();
    });
  }

  Future<void> addSpending(
    String title,
    String shop,
    String amount,
    String categoryId,
  ) async {
    final docSpending =
        FirebaseFirestore.instance.collection('spendings').doc();
    final spending = SpendingModel(
        title: title,
        shop: shop,
        amount: amount,
        id: docSpending.id,
        categoryID: categoryId);
    final json = spending.toJson();
    await docSpending.set(json);
  }

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance.collection('spendings').doc(id).delete();
  }
}
