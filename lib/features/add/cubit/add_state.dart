part of 'add_cubit.dart';

@freezed
class AddState with _$AddState {
  factory AddState({
   @Default('') String errorMessage,
    bool? saved,
  }) = _AddState;
}
