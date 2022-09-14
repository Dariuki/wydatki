import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/data/remote_data_sourse/spending_remote_data_source.dart';
import 'package:wydatki/domain/models/category_model.dart';
import 'package:wydatki/domain/models/spendings_model.dart';
import 'package:wydatki/domain/ropositories/spending_repository.dart';
import 'package:wydatki/features/add/pages/add_spendings_page.dart';
import 'package:wydatki/features/spendings/cubit/spendings_cubit.dart';

class SpendingsPage extends StatelessWidget {
  const SpendingsPage({
    required this.category,
    Key? key,
  }) : super(key: key);
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Lista wydatków - ${category.type}'),
        ),
      ),
      body: BlocProvider(
        create: (context) =>
            SpendingsCubit(SpendingsRepository(SpendingRemoteDataSource()))
              ..fetchData(categoryID: category.id),
        child: BlocBuilder<SpendingsCubit, SpendingsState>(
          builder: (context, state) {
            final itemsModels = state.items;

            if (itemsModels.isEmpty) {
              return const SizedBox.shrink();
            }

            return ListView(
              padding: const EdgeInsets.symmetric(vertical: 20),
              children: [
                for (final itemModel in itemsModels)
                  Dismissible(
                    key: ValueKey(itemModel.id),
                    background: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 32.0),
                          child: Icon(Icons.delete),
                        ),
                      ),
                    ),
                    confirmDismiss: (direction) async {
                      return direction == DismissDirection.endToStart;
                    },
                    onDismissed: (direction) {
                      context
                          .read<SpendingsCubit>()
                          .remove(documentID: itemModel.id);
                    },
                    child: _ListItemView(itemModel: itemModel),
                  ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black26,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 10),
                        const Text(
                          'Suma:',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            state.sum.toString(),
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddSpendingsPage(model: category),
              fullscreenDialog: true,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _ListItemView extends StatelessWidget {
  const _ListItemView({
    Key? key,
    required this.itemModel,
  }) : super(key: key);

  final SpendingModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 30,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black12,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    itemModel.shop,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    itemModel.title,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    itemModel.amount.toString(),
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
