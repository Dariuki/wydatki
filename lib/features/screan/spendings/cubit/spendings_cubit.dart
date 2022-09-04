import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:wydatki/features/models/spendings_model.dart';
import 'package:wydatki/features/ropositories/spending_repository.dart';

part 'spendings_state.dart';

class SpendingsCubit extends Cubit<SpendingsState> {
  SpendingsCubit(this._spendingsRepository) : super(const SpendingsState());

  final SpendingsRepository _spendingsRepository;
  StreamSubscription? _streamSubscription;

  Future<void> fetchData() async {
    _streamSubscription = _spendingsRepository.getSpendingStream().listen(
      (items) {
        emit(SpendingsState(items: items));
      },
    )..onError(
        (error) {
          emit(const SpendingsState(loadingError: true));
        },
      );
  }

  Future<void> remove({required String documentID}) async {
    try {
      await _spendingsRepository.delete(id: documentID);
    } catch (error) {
      emit(
        const SpendingsState(removingError: true),
      );
      fetchData();
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
