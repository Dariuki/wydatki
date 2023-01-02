part of 'home_cubit.dart';



@freezed
class HomeState with _$HomeState {
  factory HomeState({
  @Default([])List<CategoryModel> items,
  @Default([]) List<SpendingModel> allitems,
  @Default(Status.initial) Status status,
  String? errorMessage,
  double? sum,
  }) = _HomeState;
}


