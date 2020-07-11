import 'package:flutter/material.dart';
import 'NavController.dart';

void main() {
  runApp(ResumeApp());
}

class ResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Call Me Maybe',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                    title: Text('Call Me Maybe'),
                    bottom: TabBar(tabs: [
                      iconTab(Icons.face),
                      iconTab(Icons.library_books),
                      iconTab(Icons.help),
                    ])),
                body: TabBarView(children: [
                  Text('Business Card'),
                  Text('Resume'),
                  Text('Magic Picker'),
                ]))));
  }
}

Widget iconTab(IconData icon) {
  return Tab(icon: Icon(icon));
}
