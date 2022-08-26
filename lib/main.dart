import 'package:financial_app/Screens/splash_screen.dart';
import 'package:financial_app/constants.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'book keeper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // scaffoldBackgroundColor: Constants.pupleDark,
        // canvasColor: Constants.purpleLight
      ),
      home: SplashScreen(),
    );
  }
}