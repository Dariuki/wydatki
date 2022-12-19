import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      providerConfigs: const [
        EmailProviderConfiguration(),
      ],
      actions: [
        SignedOutAction((context) {
          Navigator.of(context).pop();
        }),
      ],
      avatarSize: 50,
      appBar: AppBar(
        title: const Center(child: Text('Użytkownik')),
      ),
    );
  }
}
