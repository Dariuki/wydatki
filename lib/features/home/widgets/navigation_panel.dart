import 'package:flutter/material.dart';
import 'package:wydatki/features/account/user_profile.dart';
import 'package:wydatki/features/weather/peages/weather_page.dart';

class NavigationPanel extends StatelessWidget {
  const NavigationPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Color.fromARGB(255, 177, 214, 248),
            Color.fromARGB(255, 79, 136, 185),
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Center(child: FlutterLogo()),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 30,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(255, 90, 170, 249),
                    Color.fromARGB(240, 166, 251, 214),
                  ],
                  tileMode: TileMode.mirror,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(4, 8),
                  ),
                ],
              ),
              child: ListTile(
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 30,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(255, 90, 170, 249),
                    Color.fromARGB(240, 166, 251, 214),
                  ],
                  tileMode: TileMode.mirror,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(4, 8),
                  ),
                ],
              ),
              child: ListTile(
                leading: const Icon(Icons.cloud_circle),
                title: const Text('Pogoda'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (content) => const WeatherPage(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
