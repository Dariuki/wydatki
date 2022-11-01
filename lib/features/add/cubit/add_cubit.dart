import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wydatki/domain/ropositories/category_repository.dart';
import 'package:wydatki/domain/ropositories/spending_repository.dart';

part 'add_cubit.freezed.dart';
part 'add_state.dart';


@injectable 
class AddCubit extends Cubit<AddState> {
  AddCubit({required this.categoriesRepository, required this.spendingsRepository})
      : super(AddState());

  final CategoriesRepository categoriesRepository;
  final SpendingsRepository spendingsRepository;

  Future<void> addCategory(
    String type,
  ) async {
    try {
      await categoriesRepository.addCategory(type);
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
      await spendingsRepository.addSpending(
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
