
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wydatki/app/injection/injection_container.dart';
import 'package:wydatki/features/app.dart';

import 'package:wydatki/firebase_options.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( const MyApp());
}
