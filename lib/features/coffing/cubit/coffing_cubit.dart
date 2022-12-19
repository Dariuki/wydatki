import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wydatki/app/enum/enums.dart';
import 'package:wydatki/domain/models/category_coffing.dart';
import 'package:wydatki/domain/ropositories/coffing_repository.dart';

part 'coffing_state.dart';
part 'coffing_cubit.freezed.dart';

class CoffingCubit extends Cubit<CoffingState> {
  CoffingCubit(
    this.coffingRepository,
  ) : super(CoffingState());

  final CoffingRepository coffingRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(CoffingState(status: Status.initial));
    try {
      _streamSubscription =
          coffingRepository.getCategory().listen((categoryModel) {
        emit(
          CoffingState(
            items: categoryModel,
            status: Status.success,
          ),
        );
      });
    } catch (error) {
      emit(CoffingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> fetchData({
    required String categoryID,
  }) async {
    try {
      _streamSubscription =
          coffingRepository.getSpendingForCategoryId(categoryID).listen(
        (spendingModel) {
          double totalAmount = 0.0;
          for (SpendingModel item in spendingModel) {
            totalAmount += item.amount;
          }
          totalAmount;

          emit(CoffingState(
              allitems: spendingModel,
              sum: totalAmount,
              status: Status.success));
        },
      );
    } catch (error) {
      emit(CoffingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> addCategory(
    String type,
  ) async {
    try {
      await coffingRepository.addCategory(type);
      emit(CoffingState(
        status: Status.success,
        saved: true,
      ));
    } catch (error) {
      emit(CoffingState(
        status: Status.error,
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
      await coffingRepository.addSpending(
        title,
        shop,
        amount,
        id,
      );
      emit(
        CoffingState(
          status: Status.success,
          saved: true,
        ),
      );
    } catch (error) {
      emit(CoffingState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> delite({required String documentID}) async {
    try {
      await coffingRepository.delete(id: documentID);
    } catch (error) {
      emit(
        CoffingState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
      start();
    }
  }

  Future<void> remove({required String documentID}) async {
    try {
      await coffingRepository.remuve(id: documentID);
    } catch (error) {
      emit(
        CoffingState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
      fetchData(categoryID: '');
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
