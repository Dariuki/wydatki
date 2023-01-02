import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/app/injection/injection_container.dart';
import 'package:wydatki/features/add/pages/add_category_page.dart';
import 'package:wydatki/features/home/cubit/home_cubit.dart';
import 'package:wydatki/features/home/widgets/navigation_panel.dart';
import 'package:wydatki/features/home/widgets/category_item_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            AppLocalizations.of(context)!.categoryList,
          ),
        ),
      ),
      drawer: const Drawer(child: NavigationPanel()),
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
        child: const _HomePageBody(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddCategoryPage(),
              fullscreenDialog: true,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) {
        return getIt()..start();
      },
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final itemModels = state.items;
          if (itemModels.isEmpty) {
            return const SizedBox.shrink();
          }

          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 20),
            children: [
              for (final itemModel in itemModels)
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
                    context.read<HomeCubit>().delite(documentID: itemModel.id);
                  },
                  child: CategoryItemView(itemModel: itemModel),
                ),
            ],
          );
        },
      ),
    );
  }
}
