import 'package:flutter/material.dart';
import 'BusinessCardPage.dart';
import 'ResumePage.dart';
import 'CallBackGuessPage.dart';

// This class will control the nav bar and ensure the right
// page gets loaded.
class NavController extends StatefulWidget {
  NavController({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NavControllerState createState() => _NavControllerState();
}

class _NavControllerState extends State<NavController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
              BusinessCardPage(),
              ResumePage(),
              CallBackGuessPage(),
            ])));
  }
}

Widget iconTab(IconData icon) {
  return Tab(icon: Icon(icon));
}
