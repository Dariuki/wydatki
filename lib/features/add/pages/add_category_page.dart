import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/features/add/cubit/add_cubit.dart';

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
    return BlocProvider(
      create: (context) => AddCubit(),
      child: BlocBuilder<AddCubit, AddState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Dodaj Kategorie'),
              actions: [
                IconButton(
                  onPressed: categoriesName.isEmpty
                      ? null
                      : () {
                          context.read<AddCubit>().addCategory(categoriesName);
                          Navigator.of(context).pop();
                        },
                  icon: const Icon(Icons.check_box),
                ),
              ],
            ),
            body: ListView(
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
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Tytuł Kategorii'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
