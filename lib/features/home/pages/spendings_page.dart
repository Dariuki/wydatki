import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/app/injection/injection_container.dart';
import 'package:wydatki/domain/models/coffing/category_model.dart';
import 'package:wydatki/features/add/pages/add_spendings_page.dart';
import 'package:wydatki/features/home/cubit/home_cubit.dart';
import 'package:wydatki/features/home/widgets/spending_item_view.dart';
import 'package:wydatki/features/home/widgets/sum_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SpendingsPage extends StatelessWidget {
  const SpendingsPage({
    required this.model,
    Key? key,
  }) : super(key: key);
  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.spendingsList,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                model.type,
              )
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromARGB(255, 177, 214, 248),
              Color.fromARGB(255, 79, 136, 185),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: _SpendingPageBody(model: model),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddSpendingsPage(model: model),
              fullscreenDialog: true,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _SpendingPageBody extends StatelessWidget {
  const _SpendingPageBody({
    Key? key,
    required this.model,
  }) : super(key: key);

  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) {
        return getIt()..fetchData(categoryID: model.id);
      },
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final itemsModels = state.allitems;

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
                    context.read<HomeCubit>().remove(documentID: itemModel.id);
                  },
                  child: SpendingItemView(itemModel: itemModel),
                ),
              SumWidget(model: model)
            ],
          );
        },
      ),
    );
  }
}
