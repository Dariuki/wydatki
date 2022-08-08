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
            onPressed: () {},
            icon: const Icon(Icons.check_box),
          ),
        ],
      ),
      body: _AddCategoryBody(
        onTitleChanged: (newValue) {
          setState(() {
            categoriesName = newValue;
          });
        },
      ),
    );
  }
}

class _AddCategoryBody extends StatelessWidget {
  const _AddCategoryBody({
    required this.onTitleChanged,
    Key? key,
  }) : super(key: key);

  final Function(String) onTitleChanged;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
        TextField(
          onChanged: onTitleChanged,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Tytuł Kategorii'),
          ),
        )
      ],
    );
  }
}
