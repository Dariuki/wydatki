import 'package:flutter/material.dart';
import 'package:wydatki/features/add/pages/add_spendings_page.dart';
import 'package:wydatki/features/spendings/pages/spendings_body.dart';


class SpendingsPage extends StatelessWidget {
  const SpendingsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Lista Wydatków')),
      ),
      body: const SpendingsBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddSpendingsPage(),
              fullscreenDialog: true,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
