import 'package:flutter/material.dart';
import 'package:vendor_app/screens/home/ServiceProvider.dart';
import 'package:vendor_app/screens/home/VendorHomePage.dart';
import 'package:vendor_app/screens/authenticate/Register.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../services/auth.dart';

enum SingingCharacter { vendor, service_Provider }

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPage();
}

/// This is the private State class that goes with MyStatefulWidget.
class _LoginPage extends State<LoginPage> {
  SingingCharacter? _character = SingingCharacter.vendor;
  final formKey = GlobalKey<FormState>();
  var characterValue = 0;

  final AuthService _auth = AuthService();

  String email = "";
  String password = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Container(
          alignment: Alignment.center,
          child: Text("Login Page"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.userAlt),
            iconSize: 100,
            onPressed: () {},
          ),
          Container(
            child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        // The validator receives the text that the user has entered.
                        decoration: InputDecoration(
                            labelText: 'User Name',
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        // The validator receives the text that the user has entered.
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Center(
                      child: Container(
                        child: Column(
                          children: [
                            ListTile(
                              focusColor: Colors.amber,
                              title: const Text('Vendor'),
                              leading: Radio<SingingCharacter>(
                                value: SingingCharacter.vendor,
                                groupValue: _character,
                                toggleable: true,
                                onChanged: (SingingCharacter? value) {
                                  //print(characterValue);
                                  setState(() {
                                    _character = value;
                                    characterValue = 1;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              selectedTileColor: Colors.amber,
                              title: const Text('Service Provider'),
                              leading: Radio<SingingCharacter>(
                                value: SingingCharacter.service_Provider,
                                groupValue: _character,
                                toggleable: true,
                                onChanged: (SingingCharacter? value) {
                                  //print(characterValue);
                                  setState(() {
                                    _character = value;
                                    characterValue = 0;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                            ),
                            RaisedButton(
                              color: Colors.amber,
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {
                                  dynamic result =
                                      await _auth.signInrWithEmailAndPassword(
                                          email, password);
                                  if (result == null) {
                                    setState(() {
                                      error = "Invail Email and password";
                                    });
                                  } else {
                                    if (characterValue == 1) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                VendorHomePage()),
                                      );
                                    } else {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ServiceProviderHomePage()),
                                      );
                                    }
                                  }
                                }
                              },
                              child: Text('Sign In'),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()),
                                  );
                                  // Validate returns true if the form is valid, or false otherwise.
                                  //
                                },
                                child: Text('New User? Create account'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          )
        ]),
      ),
    );
  }
}
