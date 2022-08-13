part of 'auth_gate_cubit.dart';

@immutable
class AuthGateState {
  final User? user;
  final bool isLoading;
  final String errorMessage;

  const AuthGateState({
    required this.user,
    required this.isLoading,
    required this.errorMessage,
  });
}
