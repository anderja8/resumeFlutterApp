import 'package:flutter/material.dart';
import 'screens/BusinessCardPage.dart';
import 'screens/ResumePage.dart';
import 'screens/CallBackGuessPage.dart';
import 'styles.dart';

// This class will control the nav bar and ensure the right
// page gets loaded.
class NavController extends StatefulWidget {
  NavController({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NavControllerState createState() => _NavControllerState();
}

Widget iconTab(IconData icon) {
  return Tab(icon: Icon(icon));
}

final tabs = [
  iconTab(Icons.face),
  iconTab(Icons.library_books),
  iconTab(Icons.help),
];

final screens = [
  BusinessCardPage(),
  ResumePage(),
  CallBackGuessPage(),
];

class _NavControllerState extends State<NavController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Call Me Maybe', style: Styles.standardTextStyle),
              bottom: TabBar(tabs: tabs),
              backgroundColor: Colors.blueGrey[800],
            ),
            body: TabBarView(children: screens)));
  }
}
