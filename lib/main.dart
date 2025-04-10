import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sport/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]).then((fn){
    runApp(
    MaterialApp(
      home: Home(),
    ),
  );
  });
}