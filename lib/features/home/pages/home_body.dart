import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/features/home/cubit/home_cubit.dart';
import 'package:wydatki/features/home/pages/home_items.dart';


class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..start(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Text(state.errorMessage),
            );
          }
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          final documents = state.model;

          return ListView(
            children: [
              for (final document in documents) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: ListItemView(document: document),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
