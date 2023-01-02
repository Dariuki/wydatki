import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/app/injection/injection_container.dart';
import 'package:wydatki/features/add/cubit/add_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddCategoryPage extends StatefulWidget {
  const AddCategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AddCategoryPage> createState() => _AddCategoryPageState();
}

class _AddCategoryPageState extends State<AddCategoryPage> {
  var categoriesName = '';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddCubit>(
      create: (context) {
        return getIt();
      },
      child: BlocListener<AddCubit, AddState>(
        listener: (context, state) {
          if (state.saved!) {
            Navigator.of(context).pop();
          }
          if (state.errorMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: BlocBuilder<AddCubit, AddState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Center(
                    child: Text(AppLocalizations.of(context)!.addCategory)),
                actions: [
                  IconButton(
                    onPressed: categoriesName.isEmpty
                        ? null
                        : () {
                            context
                                .read<AddCubit>()
                                .addCategory(categoriesName);
                          },
                    icon: const Icon(Icons.check_box),
                  ),
                ],
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
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  children: [
                    TextField(
                      onChanged: (newValue) {
                        setState(() {
                          categoriesName = newValue;
                        });
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        label: Text(AppLocalizations.of(context)!.addCategory),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
