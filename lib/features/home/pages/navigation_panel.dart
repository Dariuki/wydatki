import 'package:flutter/material.dart';
import 'package:wydatki/features/account/user_profile.dart';
import 'package:wydatki/features/weather/peages/weather_page.dart';

class NavigationPanel extends StatelessWidget {
  const NavigationPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          child: const Center(child: FlutterLogo()),
        ),
        const SizedBox(height: 10),
        ListTile(
          leading: const Icon(Icons.account_circle),
          title: const Text('Urzytkownik'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (content) => const UserProfile(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.cloud_circle),
          title: const Text('Pogoda'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (content) => const WeatherPage(),
              ),
            );
          },
        )
      ],
    );
  }
}
