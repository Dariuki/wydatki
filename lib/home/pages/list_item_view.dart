
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListItemView extends StatelessWidget {
  const ListItemView({
    Key? key,
    required this.document,
  }) : super(key: key);

  final QueryDocumentSnapshot<Map<String, dynamic>> document;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(document['title']),
        ],
      ),
    );
  }
}
