part of 'auth_gate_cubit.dart';


@freezed
class AuthGateState with _$AuthGateState {
  factory AuthGateState({
    User? user,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _AuthGateState;
}


