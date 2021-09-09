// @dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:first_flutter_app/screens/home/home.dart';
import 'package:first_flutter_app/splash_screen_2.dart';
import 'package:first_flutter_app/start_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:validators/sanitizers.dart';
import 'screens/authenticate/Register.dart';
import 'screens/authenticate/login.dart';
import 'Dashboard.dart';
import 'Media_Query.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen_2(),
    );
  }
}
