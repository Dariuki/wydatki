part of 'auth_gate_cubit.dart';


@freezed
class AuthGateState with _$AuthGateState {
  factory AuthGateState({
  User? user,
    bool? isLoading,
    String? errorMessage,
  }) = _AuthGateState;
}


