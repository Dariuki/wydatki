import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/features/ropositories/category_repository.dart';
import 'package:wydatki/features/screan/add/cubit/add_cubit.dart';

class AddSpendingsPage extends StatefulWidget {
  const AddSpendingsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AddSpendingsPage> createState() => _AddSpendingsPageState();
}

class _AddSpendingsPageState extends State<AddSpendingsPage> {
  var spendingsName = '';
  var shopName = '';
  var amountName = '';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddCubit(CategoriesRepository()),
      child: BlocListener<AddCubit, AddState>(
        listener: (context, state) {
          if (state.saved) {
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
                  title: const Text('Dodaj Kategorie'),
                  actions: [
                    IconButton(
                      onPressed: spendingsName.isEmpty ||
                              shopName.isEmpty ||
                              amountName.isEmpty
                          ? null
                          : () {
                              context.read<AddCubit>().addSpendings(
                                    spendingsName,
                                    shopName,
                                    amountName,
                                  );
                            },
                      icon: const Icon(Icons.check_box),
                    ),
                  ],
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    children: [
                      TextField(
                        onChanged: (newValue) {
                          setState(() {
                            shopName = newValue;
                          });
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Nazwa Sklepu'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        onChanged: (newValue) {
                          setState(() {
                            spendingsName = newValue;
                          });
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Typ wydatku'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          onChanged: (newValue) {
                            setState(() {
                              amountName = newValue.toString();
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('Kwota Wydatku'),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.singleLineFormatter
                          ])
                    ],
                  ),
                ));
          },
        ),
      ),
    );
  }
}
