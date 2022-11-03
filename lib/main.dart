import 'package:app_store/constants.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';

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
      title: 'Store Application',
      theme: ThemeData(
        //textTheme: GoogleFonts.almaraiTextTheme()
        primaryColor: kPrimaryColor,
        //accentColor: kPrimaryColor,
      ),
      home:const HomeScreen(),
    );
  }
}

