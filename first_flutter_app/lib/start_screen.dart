import 'dart:async';
import 'package:first_flutter_app/Media_Query.dart';
import 'package:first_flutter_app/screens/authenticate/login.dart';
import 'package:first_flutter_app/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'screens/home/home.dart';
import 'constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("assets/images/StartScreen.jpg"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Container(
              width: 200,
              child: Text(
                "Blessed Are The Hairstylists For They Bring Out The Beauty Of Other",
                style: kTitleStyle,
                textAlign: TextAlign.justify,
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 20.0)),
            // CircularProgressIndicator(
            //   backgroundColor: Colors.white,
            //   strokeWidth: 1,
            // )
          ],
        ),
      ),
    );
  }
}
