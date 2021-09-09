import 'package:first_flutter_app/screens/authenticate/login.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatelessWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LoginPage(),
    );
  }
}
