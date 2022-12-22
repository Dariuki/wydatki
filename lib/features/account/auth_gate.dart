import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:wydatki/app/cubit/auth_gate_cubit.dart';
import 'package:wydatki/features/home/pages/home_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({

    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthGateCubit()..start(),
      child: BlocBuilder<AuthGateCubit, AuthGateState>(
        builder: (context, state) {
          final user = state.user;

          if (user == null) {
            return const SignInScreen(
              providerConfigs: [
                EmailProviderConfiguration(),
              ],
            );
          }

          return const HomePage();
        },
      ),
    );
  }
}
