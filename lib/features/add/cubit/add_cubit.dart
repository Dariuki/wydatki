import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:wydatki/domain/models/category_model.dart';
import 'package:wydatki/domain/ropositories/category_repository.dart';
import 'package:wydatki/domain/ropositories/spending_repository.dart';

part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit(this._categoriesRepository, this._spendingsRepository)
      : super(const AddState(itemModel: null));

  final CategoriesRepository _categoriesRepository;
  final SpendingsRepository _spendingsRepository;

  Future<void> addCategory(
    String type,
  ) async {
    try {
      await _categoriesRepository.addCategory(type);
      emit(const AddState(
        saved: true,
        itemModel: null,
      ));
    } catch (error) {
      emit(AddState(
        errorMessage: error.toString(),
        itemModel: null,
      ));
    }
  }

  Future<void> addSpendings(
    String title,
    String shop,
    String amount,
    String id,
  ) async {
    try {
      await _spendingsRepository.addSpending(
        title,
        shop,
        amount,
        id,
      );
      emit(
        const AddState(saved: true, itemModel: null),
      );
    } catch (error) {
      emit(AddState(
        errorMessage: error.toString(),
        itemModel: null,
      ));
    }
  }

  Future<void> getItemWhitID(String id) async {
    final itemModel = await _categoriesRepository.get(id: id);
    emit(AddState(itemModel: itemModel));
  }

  signOut() {}
}
