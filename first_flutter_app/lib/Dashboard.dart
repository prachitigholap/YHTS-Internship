import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Dashboard"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black54,
                        width: 3,
                      )),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [Text('Profile')],
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black54,
                        width: 3,
                      )),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Membership'),
                      IconButton(
                          padding: EdgeInsets.only(bottom: 5),
                          color: Colors.amber,
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) => Container(
                                      color: Colors.amber[50],
                                      child: Column(
                                        children: [
                                          Padding(padding: EdgeInsets.all(15)),
                                          TextField(
                                            decoration: InputDecoration(
                                                labelText: 'Vendor Name',
                                                border: OutlineInputBorder()),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 15)),
                                              FlatButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    'Add Membership',
                                                    style: TextStyle(
                                                        color: Colors.amber),
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ));
                          },
                          icon: Icon(Icons.add))
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                SingleChildScrollView(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.black54,
                          width: 3,
                        )),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [Text('Previous Bookings')],
                    ),
                  ),
                ),
                //Center(child: Text('This is profile')),
              ],
            ),
          ),
        ));
  }
}
