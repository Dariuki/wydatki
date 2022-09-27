import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/data/remote_data_sourse/category_remote_data_source.dart';
import 'package:wydatki/data/remote_data_sourse/spending_remote_data_source.dart';
import 'package:wydatki/domain/models/category_model.dart';
import 'package:wydatki/domain/ropositories/category_repository.dart';
import 'package:wydatki/domain/ropositories/spending_repository.dart';
import 'package:wydatki/features/add/cubit/add_cubit.dart';

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
  String? _title;
  String? _shop;
  double? _amount;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddCubit(
          CategoriesRepository(CategoryRemoteDataSource()),
          SpendingsRepository(SpendingRemoteDataSource())),
      child: BlocListener<AddCubit, AddState>(
        listener: (context, state) {
          if (state.saved!) {
            Navigator.of(context).pop();
          }
          if (state.errorMessage!.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage!),
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
                  child: Text('Dodaj wydatek - ${widget.model.type}'),
                ),
                actions: [
                  IconButton(
                    onPressed:
                        _title == null || _shop == null || _amount == null
                            ? null
                            : () {
                                context.read<AddCubit>().addSpendings(
                                      _title!,
                                      _shop!,
                                      _amount!,
                                      widget.model.id,
                                    );
                              },
                    icon: const Icon(Icons.check_box),
                  ),
                ],
              ),
              body: _AddSpendingsPageBody(
                onShopChanged: (newValue) {
                  setState(() {
                    _shop = newValue;
                  });
                },
                onTitleChanged: (newValue) {
                  setState(() {
                    _title = newValue;
                  });
                },
                onAmountChanged: (newValue) {
                  setState(() {
                    _amount = double.tryParse(newValue);
                  });
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class _AddSpendingsPageBody extends StatelessWidget {
  const _AddSpendingsPageBody({
    Key? key,
    required this.onTitleChanged,
    required this.onAmountChanged,
    required this.onShopChanged,
  }) : super(key: key);

  final Function(String) onTitleChanged;
  final Function(String) onShopChanged;
  final Function(String) onAmountChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        children: [
          TextField(
            onChanged: onShopChanged,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Nazwa Sklepu'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            onChanged: onTitleChanged,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Typ wydatku'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
              onChanged: onAmountChanged,
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
    );
  }
}
