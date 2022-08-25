import 'dart:async';
import 'dart:ui';

import 'package:financial_app/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => InitState();
}

class InitState extends State<SplashScreen> {
   void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async{
    var duration = Duration(seconds: 3);
    return Timer(duration, loginRoute);
  }

  loginRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => LoginScreen() ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  
  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(125, 5, 68, 235),
              gradient: LinearGradient(colors: [(
                Color.fromARGB(255, 0, 68, 255)
              ),
              (Color.fromARGB(125, 5, 68, 235)
              ),],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            ),
          ),
          ),
          Center(
            child: Container(
              child: Image.asset('assets/images/hand_logot.png'),
              width: 200,
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}

