import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Section/landing.dart';
import 'package:my_portfolio/home.dart';

Future<void> main() async {
  
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
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
         textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.blueGrey,
      ),
      
       darkTheme: ThemeData(                           // New
        brightness: Brightness.dark,                  // New
      ), 
      home: HomeScreen()
    );
  }
}

