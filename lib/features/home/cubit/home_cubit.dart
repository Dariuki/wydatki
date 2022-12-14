import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wydatki/app/core/enum/enums.dart';
import 'package:wydatki/domain/models/coffing/category_model.dart';
import 'package:wydatki/domain/models/coffing/spending_model.dart';
import 'package:wydatki/domain/ropositories/category_repository.dart';
import 'package:wydatki/domain/ropositories/spending_repository.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.spendingsRepository, {required this.categoriesRepository})
      : super(HomeState());

  final CategoriesRepository categoriesRepository;
  final SpendingsRepository spendingsRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(HomeState(status: Status.loading));
    try {
      _streamSubscription = categoriesRepository.getCategory().listen(
        (items) {
          emit(HomeState(
            items: items,
          ));
        },
      );
    } catch (error) {
      emit(HomeState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> fetchData({required String categoryID}) async {
    emit(HomeState(status: Status.loading));
    try {
      _streamSubscription =
          spendingsRepository.getSpendingForCategoryId(categoryID).listen(
        (items) {
          double totalAmount = 0.0;
          for (SpendingModel item in items) {
            totalAmount += item.amount;
          }
          totalAmount;

          emit(HomeState(
            allitems: items,
            sum: totalAmount,
          ));
        },
      );
    } catch (error) {
      emit(HomeState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> delite({required String documentID}) async {
    try {
      await categoriesRepository.delete(id: documentID);
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
      start();
    }
  }

  Future<void> remove({required String documentID}) async {
    try {
      await spendingsRepository.remove(id: documentID);
    } catch (error) {
      emit(
        HomeState(
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
