import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/app/injection/injection_container.dart';
import 'package:wydatki/domain/models/coffing/category_model.dart';
import 'package:wydatki/features/home/cubit/home_cubit.dart';
import 'package:wydatki/features/home/pages/spendings_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategoryItemView extends StatelessWidget {
  const CategoryItemView({
    Key? key,
    required this.itemModel,
  }) : super(key: key);

  final CategoryModel itemModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SpendingsPage(
            model: itemModel,
          ),
        ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 90, 170, 249),
                Color.fromARGB(240, 166, 251, 214),
              ],
              tileMode: TileMode.mirror,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(4, 8),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        itemModel.type,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      color: Colors.white70,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(4, 8),
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        _Sum(model: itemModel),
                        Text(AppLocalizations.of(context)!.currency),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Sum extends StatelessWidget {
  const _Sum({
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
          final itemModels = state.allitems;
          if (itemModels.isEmpty) {
            return const SizedBox.shrink();
          }

          return Text(
            state.sum!.toStringAsFixed(2),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          );
        },
      ),
    );
  }
}
