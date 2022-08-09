import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Section/landing.dart';
import 'package:my_portfolio/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MJ Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.blueGrey,
      ),
      home: HomeScreen()
    );
  }
}

