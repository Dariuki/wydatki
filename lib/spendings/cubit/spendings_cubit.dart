import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

part 'spendings_state.dart';

class SpendingsCubit extends Cubit<SpendingsState> {
  SpendingsCubit()
      : super(const SpendingsState(
          documents: [],
          errorMessage: '',
          isLoading: false,
        ));

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(const SpendingsState(
      documents: [],
      isLoading: true,
      errorMessage: '',
    ));

    _streamSubscription = FirebaseFirestore.instance
        .collection('spendings')
        .orderBy('title')
        .snapshots()
        .listen((data) {
      emit(
        SpendingsState(
          documents: data.docs,
          isLoading: false,
          errorMessage: '',
        ),
      );
    })
      ..onError((error) {
        emit(
          SpendingsState(
            documents: const [],
            isLoading: false,
            errorMessage: error.toString(),
          ),
        );
      });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
