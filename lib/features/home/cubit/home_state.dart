part of 'home_cubit.dart';



@freezed
class HomeState with _$HomeState {
  factory HomeState({
  @Default([])List<CategoryModel> items,
  @Default([]) List<SpendingModel> allitems,
    bool? loadingError,
    bool? removingError,
    double? sum,
  }) = _HomeState;
}


