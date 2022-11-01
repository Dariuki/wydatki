part of 'home_cubit.dart';



@freezed
class HomeState with _$HomeState {
  factory HomeState({
  @Default([])List<CategoryModel> items,
    bool? loadingError,
    bool? removingError,
  }) = _HomeState;
}


