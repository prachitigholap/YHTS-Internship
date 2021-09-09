import 'dart:ui';

import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';

class ServiceProviderHomePage extends StatefulWidget {
  @override
  _ServiceProviderHomePageState createState() =>
      _ServiceProviderHomePageState();
}

class _ServiceProviderHomePageState extends State<ServiceProviderHomePage> {
  String qrCodeResult = "Not Yet Scanned";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Provider Home'),
        backgroundColor: Colors.purple[900],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.indigo[200],
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 25, top: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "See appointments",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(left: 70),
                  child: RaisedButton(
                    onPressed: () async {
                      String codeSanner =
                          await BarcodeScanner.scan(); //barcode scnner
                      setState(() {
                        qrCodeResult = codeSanner;
                      });
                    },
                    color: Colors.white,
                    child: Text(
                      "Scan QR code",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
