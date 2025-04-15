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
      theme: ThemeData().copyWith(
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: Color.fromARGB(255, 254, 102, 0),
        )
      ),
      home: Home(),
    ),
  );
  });
}