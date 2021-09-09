import 'package:firebase_auth/firebase_auth.dart';
import 'package:vendor_app/screens/authenticate/authenticate.dart';
import 'package:vendor_app/screens/home/ServiceProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user.dart';
import 'screens/home/VendorHomePage.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    // return either the Home or Authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return VendorHomePage();
    }
  }
}
