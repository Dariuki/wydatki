import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:wydatki/features/ropositories/category_repository.dart';
import 'package:wydatki/features/ropositories/spending_repository.dart';

part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit(this._categoriesRepository, this._spendingsRepository)
      : super(const AddState());

  final CategoriesRepository _categoriesRepository;
  final SpendingsRepository _spendingsRepository;
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
      await _spendingsRepository.addSpending(
        spendingsName,
        shopName,
        amountName,
      );
      emit(const AddState(saved: true));
    } catch (error) {
      emit(AddState(errorMessage: error.toString()));
    }
  }

  signOut() {}
}
