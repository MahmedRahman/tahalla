import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tahalla/screen/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Loew Next Arabic',
      ),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: LayoutPage(),
      ),
    );
  }
}
