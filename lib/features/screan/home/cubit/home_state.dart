part of 'home_cubit.dart';


class HomeState {
  final QuerySnapshot<Map<String, dynamic>>? items;
  final bool loadingError;
  final bool removingError;

  const HomeState({
    this.items,
    this.loadingError = false,
    this.removingError = false,
  });
}
