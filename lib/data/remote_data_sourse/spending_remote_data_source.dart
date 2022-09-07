import 'package:cloud_firestore/cloud_firestore.dart';

class SpendingRemoteDataSource {
  Stream<QuerySnapshot<Map<String, dynamic>>> getAllDocsStream() {
    return FirebaseFirestore.instance
        .collection('spendings')
        .orderBy('title')
        .snapshots();
  }

  DocumentReference<Map<String, dynamic>> addSpending() {
    return FirebaseFirestore.instance.collection('spendings').doc();
  }

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance.collection('spendings').doc(id).delete();
  }
}
