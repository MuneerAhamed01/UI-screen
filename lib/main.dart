import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_screens/screens/ui_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primarySwatch: Colors.blue,
      ),
      home: const UiScreenOne(),
    );
  }
}
