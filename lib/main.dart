import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dawar_smart/Screens/zscreens.dart';
import 'package:dawar_smart/Screens/mobility_features.dart';

import 'Screens/insert_page.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: number_in(),
    );
  }
}
