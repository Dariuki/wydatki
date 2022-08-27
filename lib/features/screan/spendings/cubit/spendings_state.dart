part of 'spendings_cubit.dart';

class SpendingsState {
  final QuerySnapshot<Map<String, dynamic>>? items;
  final bool loadingError;
  final bool removingError;

  const SpendingsState({
    this.items,
    this.loadingError = false,
    this.removingError = false,
  });
}