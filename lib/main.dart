import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.adventPro().toString(),
        primarySwatch: Colors.blue,
      ),
      home: OnBoard(),
    );
  }
}
