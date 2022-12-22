part of 'add_cubit.dart';

@freezed
class AddState with _$AddState {
  factory AddState({
   String? errorMessage,
    bool? saved,
  }) = _AddState;
}
