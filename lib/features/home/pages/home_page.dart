
import 'package:flutter/material.dart';
import 'package:wydatki/features/account/user_profile.dart';
import 'package:wydatki/features/add/pages/add_category_page.dart';
import 'package:wydatki/features/home/pages/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Wydatki')),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (content) => const UserProfile(),
                ),
              );
            },
            icon: const Icon(
              Icons.people,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: const HomePageBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddCategoryPage(),
              fullscreenDialog: true,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
