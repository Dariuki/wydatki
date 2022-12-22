import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wydatki/app/enum/enums.dart';

part 'auth_gate_cubit.freezed.dart';
part 'auth_gate_state.dart';

class AuthGateCubit extends Cubit<AuthGateState> {
  AuthGateCubit()
      : super(
          AuthGateState(),
        );

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(AuthGateState(status: Status.loading));
    try {
      _streamSubscription = FirebaseAuth.instance.authStateChanges().listen(
        (user) {
          emit(
            AuthGateState(user: user, status: Status.success),
          );
        },
      );
    } catch (error) {
      emit(
        AuthGateState(
          errorMessage: error.toString(),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
