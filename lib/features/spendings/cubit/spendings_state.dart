part of 'spendings_cubit.dart';

@freezed
class SpendingsState with _$SpendingsState {
  factory SpendingsState({
    @Default([]) List<SpendingModel> items,
    bool? loadingError,
    bool? removingError,
    double? sum,
  }) = _SpendingsState;
}
