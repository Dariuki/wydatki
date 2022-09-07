import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryRemoteDataSource {
  Stream<QuerySnapshot<Map<String, dynamic>>> getAllDocsStream() {
    return FirebaseFirestore.instance
        .collection('categories')
        .orderBy('type')
        .snapshots();
  }

  DocumentReference<Map<String, dynamic>> addCategory() {
    return FirebaseFirestore.instance.collection('categories').doc();
  }

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance.collection('categories').doc(id).delete();
  }
}
