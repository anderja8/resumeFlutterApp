import 'package:flutter/material.dart';
import 'NavController.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Call Me Maybe',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          backgroundColor: Colors.grey,
          scaffoldBackgroundColor: Colors.grey[800],
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: NavController());
  }
}
