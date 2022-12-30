import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wydatki/app/injection/injection_container.dart';
import 'package:wydatki/domain/models/coffing/category_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
  String? _shop;
  double? _amount;

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
                  child: Text(AppLocalizations.of(context)!.addExpense,
                      semanticsLabel: widget.model.type),
                ),
                actions: [
                  IconButton(
                    onPressed: _shop == null || _amount == null
                        ? null
                        : () {
                            context.read<AddCubit>().addSpendings(
                                  _shop!,
                                  _amount!,
                                  widget.model.id,
                                );
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
                child: _AddSpendingsPageBody(
                  onShopChanged: (newValue) {
                    setState(() {
                      _shop = newValue;
                    });
                  },
                  onAmountChanged: (newValue) {
                    setState(() {
                      _amount = double.tryParse(newValue);
                    });
                  },
                ),
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
    required this.onAmountChanged,
    required this.onShopChanged,
  }) : super(key: key);

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
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              label: Text(AppLocalizations.of(context)!.shopName),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
              onChanged: onAmountChanged,
              decoration:InputDecoration(
                border: const OutlineInputBorder(),
                label: Text(AppLocalizations.of(context)!.expenseAmount),
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
