import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'spendings_state.dart';
class SpendingsCubit extends Cubit<SpendingsState> {
  SpendingsCubit() : super(const SpendingsState());

  StreamSubscription? _streamSubscription;

  Future<void> fetchData() async {
    _streamSubscription = FirebaseFirestore.instance
        .collection('spendings')
        .orderBy('title')
        .snapshots().listen(
      (items) {
        emit(SpendingsState(items: items));
      },
    )..onError(
        (error) {
          emit(const SpendingsState(loadingError: true));
        },
      );
  }

  Future<void> remove({required String documentID}) async {
    try {
      await FirebaseFirestore.instance
          .collection('spendings')
          .doc(documentID)
          .delete();
    } catch (error) {
      emit(
        const SpendingsState(removingError: true),
      );
      fetchData();
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}