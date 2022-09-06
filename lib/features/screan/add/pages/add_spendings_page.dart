import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/features/models/category_model.dart';
import 'package:wydatki/features/ropositories/category_repository.dart';
import 'package:wydatki/features/ropositories/spending_repository.dart';
import 'package:wydatki/features/screan/add/cubit/add_cubit.dart';

class AddSpendingsPage extends StatefulWidget {
  const AddSpendingsPage({
    required this.model,
    Key? key,
  }) : super(key: key);

  final CategoryModel model;

  @override
  State<AddSpendingsPage> createState() => _AddSpendingsPageState();
}

class _AddSpendingsPageState extends State<AddSpendingsPage> {
  var title = '';
  var shop = '';
  var amount = '';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AddCubit(CategoriesRepository(), SpendingsRepository()),
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
                  title: Text(widget.model.type),
                  actions: [
                    IconButton(
                      onPressed: title.isEmpty || shop.isEmpty || amount.isEmpty
                          ? null
                          : () {
                              context.read<AddCubit>().addSpendings(
                                    title,
                                    shop,
                                    amount,
                                    widget.model.id,
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
                            shop = newValue;
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
                            title = newValue;
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
                              amount = newValue.toString();
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
