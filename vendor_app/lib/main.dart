import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/screens/home/ServiceProvider.dart';
import 'package:vendor_app/screens/home/VendorHomePage.dart';
import 'package:vendor_app/screens/authenticate/login.dart';
import 'screens/authenticate/Register.dart';

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
      home: LoginPage(),
    );
  }
}
