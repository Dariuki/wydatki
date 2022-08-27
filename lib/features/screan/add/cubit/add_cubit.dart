import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:wydatki/features/ropositories/category_repository.dart';

part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit(this._categoriesRepository) : super(const AddState());

  final CategoriesRepository _categoriesRepository;

  Future<void> addCategory(
    String type,
  ) async {
    try {
      await _categoriesRepository.addCategory(type);
      emit(const AddState(saved: true));
    } catch (error) {
      emit(AddState(errorMessage: error.toString()));
    }
  }

  Future<void> addSpendings(
    String spendingsName,
    String shopName,
    String amountName,
  ) async {
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
