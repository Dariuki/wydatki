import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wydatki/domain/ropositories/category_repository.dart';
import 'package:wydatki/domain/ropositories/spending_repository.dart';

part 'add_cubit.freezed.dart';
part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit(this._categoriesRepository, this._spendingsRepository)
      : super(AddState());

  final CategoriesRepository _categoriesRepository;
  final SpendingsRepository _spendingsRepository;

  Future<void> addCategory(
    String type,
  ) async {
    try {
      await _categoriesRepository.addCategory(type);
      emit(AddState(
        saved: true,
      ));
    } catch (error) {
      emit(AddState(
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> addSpendings(
    String title,
    String shop,
    double amount,
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
        AddState(
          saved: true,
        ),
      );
    } catch (error) {
      emit(AddState(
        errorMessage: error.toString(),
      ));
    }
  }

  signOut() {}
}
