import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit() : super(const AddState());

  Future<void> addCategory(String type) async {
    try {
      await FirebaseFirestore.instance.collection('categories').add({
        'type': type,
      });
      emit(const AddState(saved: true));
    } catch (error) {
      emit(AddState(errorMessage: error.toString()));
    }
  }

  Future<void> addSpendings(
      String spendingsName, String shopName, String amountName) async {
    try {
      await FirebaseFirestore.instance.collection('spendings').add({
        'title': spendingsName,
        'shop': shopName,
        'amount': amountName,
      });
      emit(const AddState(saved: true));
    } catch (error) {
      emit(AddState(errorMessage: error.toString()));
    }
  }

  signOut() {}
}
