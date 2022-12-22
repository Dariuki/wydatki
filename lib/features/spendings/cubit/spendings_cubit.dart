import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wydatki/domain/models/spending_model.dart';
import 'package:wydatki/domain/ropositories/spending_repository.dart';

part 'spendings_cubit.freezed.dart';
part 'spendings_state.dart';
@injectable 
class SpendingsCubit extends Cubit<SpendingsState> {
  SpendingsCubit({required this.spendingsRepository}) : super(SpendingsState());

  final SpendingsRepository spendingsRepository;
  StreamSubscription? _streamSubscription;

  Future<void> fetchData({required String categoryID}) async {
    _streamSubscription =
        spendingsRepository.getSpendingForCategoryId(categoryID).listen(
      (items) {
        double totalAmount = 0.0;
        for (SpendingModel item in items) {
          totalAmount += item.amount;
        }
        totalAmount;

        emit(
          SpendingsState(
          items: items,
          sum: totalAmount,
        ));
      },
    )..onError(
            (error) {
              emit(SpendingsState(loadingError: true));
            },
          );
  }

  Future<void> remove({required String documentID}) async {
    try {
      await spendingsRepository.remove(id: documentID);
    } catch (error) {
      emit(
        SpendingsState(removingError: true),
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
