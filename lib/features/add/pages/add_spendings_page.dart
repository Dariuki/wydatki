import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                      FirebaseFirestore.instance.collection('spendings').add({
                        'title': spendingsName,
                        'shop': shopName,
                        'amount': amountName,
                      });
                      Navigator.of(context).pop();
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
  }
}
