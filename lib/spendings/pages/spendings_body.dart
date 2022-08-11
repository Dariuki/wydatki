import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/spendings/cubit/spendings_cubit.dart';
import 'package:wydatki/spendings/pages/spendings_items.dart';

class SpendingsBody extends StatelessWidget {
  const SpendingsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SpendingsCubit(),
      child: BlocBuilder<SpendingsCubit, SpendingsState>(
        builder: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Text(state.errorMessage),
            );
          }
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          final documents = state.documents;

          return ListView(
            children: [
              for (final document in documents) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: ItemListView(document: document),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
