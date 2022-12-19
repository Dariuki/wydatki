part of 'coffing_cubit.dart';

@freezed
class CoffingState with _$CoffingState {
  factory CoffingState({
  @Default([])List<CategoryModel> items,
  @Default([])List<SpendingModel> allitems,
  @Default(Status.initial) Status status,
   String? errorMessage, 
   double? sum,
   bool? saved,
  }) = _CoffingState;
}