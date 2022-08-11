import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dodaj Kategorie'),
        actions: [
          IconButton(
            onPressed: categoriesName.isEmpty
                ? null
                : () {
                    FirebaseFirestore.instance.collection('categories').add({
                      'type': categoriesName,
                    });
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
  }
}
