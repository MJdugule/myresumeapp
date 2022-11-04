import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Section/landing.dart';
import 'package:my_portfolio/home.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
   
  apiKey: "AIzaSyAC7CsEYB_yC_4P93FA0cOuY1hNAJKjgag",
  authDomain: "chat-1d2dc.firebaseapp.com",
  projectId: "chat-1d2dc",
  storageBucket: "chat-1d2dc.appspot.com",
  messagingSenderId: "834023371366",
  appId: "1:834023371366:web:ac6b188323db80222cb3a7",
  measurementId: "G-LGK129E8JH"
  )

  );
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

