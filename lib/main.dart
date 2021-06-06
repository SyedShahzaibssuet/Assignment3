import 'package:flutter/material.dart';
import 'src/screen/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _Myappstate createState() => _Myappstate();
}

class _Myappstate extends State<MyApp> {
  Widget build(context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
