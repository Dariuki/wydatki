import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      appBar: AppBar(
        title: Center(
          child: Text(AppLocalizations.of(context)!.user),
        ),
      ),
      children: const [],
    );
  }
}
