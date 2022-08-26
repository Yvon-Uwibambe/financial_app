import 'dart:async';
import 'dart:ui';

import 'package:financial_app/Screens/dashboard_screen.dart';
import 'package:financial_app/Screens/signup_screen.dart';
import 'package:financial_app/widget_tree.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  @override
 
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  
  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90)
              ),
              color: Color.fromARGB(255, 0, 68, 255),
              gradient: LinearGradient(colors: [(
                Color.fromARGB(255, 0, 68, 255)),
              (Color.fromARGB(125, 5, 68, 235)),],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset('assets/images/hand_logot.png'),
                  width: 100,
                  height: 100,
                ),
                Container(
                  child: Text('Login',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 90),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: [BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 50,
              color: Color(0xffEEEEEE)
            )]
          ),
          alignment: Alignment.center,
          child: TextField(
            cursorColor: Color.fromARGB(255, 0, 68, 255),
            decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                color: Color.fromARGB(255, 0, 68, 255),
              ),
              hintText: "Enter Email",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none
            ),
          ),
        ),


        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: [BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 50,
              color: Color(0xffEEEEEE)
            )]
          ),
          alignment: Alignment.center,
          
          child: TextField(
            obscureText: true,
            cursorColor: Color.fromARGB(255, 0, 68, 255),
            decoration: InputDecoration(
              icon: Icon(
                Icons.vpn_key,
                color: Color.fromARGB(255, 0, 68, 255),
              ),
              hintText: "Enter Password",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, right: 20),
          alignment: Alignment.centerRight,
          child: GestureDetector(
            child: Text('Forget Password?'),
            onTap: () =>{
             //what happen when forget password
            },
          ),
        ),

        GestureDetector(
          onTap: () =>{
            Navigator.push(context, MaterialPageRoute(
                    builder: (context) => WidgetTree())),
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.center,
            height: 54,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [(
                Color.fromARGB(255, 0, 68, 255)),
              (Color.fromARGB(125, 5, 68, 235)),],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight
            ),

            borderRadius: BorderRadius.circular(50),
            boxShadow: [BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 50,
              color: Color(0xffEEEEEE)
            )],
            ),

            child: Text(
              'LOGIN',
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have account? '),
              GestureDetector(
                onTap: () =>{
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SignUpScreen())
                    ),
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 68, 255),
                    ),
                  ),
                ),
            ],
          ),
        ),
          ],
        ) 
      ),
    );
  }
}