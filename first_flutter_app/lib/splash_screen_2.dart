import 'dart:async';
import 'dart:ui';
import 'package:first_flutter_app/screens/authenticate/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';

import 'constants.dart';

class SplashScreen_2 extends StatefulWidget {
  @override
  _SplashScreen_2 createState() => _SplashScreen_2();
}

class _SplashScreen_2 extends State<SplashScreen_2> {
  // -------------- for start page
  Widget defaultPage = Container();

//------------ check if the user is using app for first time or not
  void checkSharedPrefs() async {
    var sharedPrefs = await SharedPreferences.getInstance();
    if (sharedPrefs.containsKey("firstTime")) {
      defaultPage = Container();
    }
  }

//-------- initialize with a Timer that will push to new screen after few seconds
  @override
  void initState() {
    super.initState();
    checkSharedPrefs();
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => LoginPage(),
        ),
      );
    });
  }

// ---------------- Splash Screen Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -------------------- temp background color can be changed.... in THEME DATA
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/splash_screen.gif",
            height: (60 / 100) * MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Text(
            "Blessed Are The Hairstylists For They Bring Out The Beauty Of Other",
            style: TextStyle(
                color: Colors.cyan[300],
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 60.0),
          CircularProgressIndicator(
            strokeWidth: 4,
            backgroundColor: Colors.amberAccent[400],
          )
        ],
      ),
    );
  }
}
