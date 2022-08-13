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

    // Future<void> add(String type) async {
    //   try {
    //     CollectionReference users =
    //         FirebaseFirestore.instance.collection('categories');
    //     var result = await users.add({'type': type});
    //     await addMultipleCollections( id: result.id);
    //     emit(const AddCategoryState(saved: true));
    //   } catch (error) {
    //     emit(AddCategoryState(errorMessage: error.toString()));
    //   }
    // }

    // Future<void> addMultipleCollections(

    //     {String? id}) async {
    //   try {
    //     CollectionReference users =
    //         FirebaseFirestore.instance.collection('categories');

    //     users.doc(id).collection('spendings').add({
    //       'id': id,
    //       'title': '',
    //       'shop': '',
    //       'amount': '',
    //     });
    //     emit(const AddCategoryState(saved: true));
    //   } catch (error) {
    //     emit(AddCategoryState(errorMessage: error.toString()));
    //   }
    // }
  }
}
