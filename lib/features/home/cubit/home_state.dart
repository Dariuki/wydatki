part of 'home_cubit.dart';

class HomeState {
  final List<CategoryModel> items;
  final bool loadingError;
  final bool removingError;

  const HomeState({
    this.items = const [],
    this.loadingError = false,
    this.removingError = false,
  });
}
