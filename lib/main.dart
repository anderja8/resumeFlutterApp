import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'App.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitUp,
  ]);
  runApp(App());
}
