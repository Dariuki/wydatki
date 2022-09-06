part of 'spendings_cubit.dart';

class SpendingsState {
  final List<SpendingModel> items;
  final bool loadingError;
  final bool removingError;

  const SpendingsState({
    this.items = const [],
    this.loadingError = false,
    this.removingError = false,
  });
}
