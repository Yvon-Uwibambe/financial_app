import 'package:financial_app/Screens/dashboard_screen.dart';
import 'package:financial_app/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {

  @override
  State <StatefulWidget> createState() =>  InitState();
}

class  InitState extends State <SignUpScreen> {
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
          height: 200,
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
                  width: 90,
                  height: 90,
                ),
                Container(
                  child: Text('Register',
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

//the input for the form
        Container(
          margin: EdgeInsets.only(
            left: 20, 
            right: 20, 
            top: 40
            ),
          padding: EdgeInsets.only(
            left: 20, 
            right: 20
            ),
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
                Icons.person,
                color: Color.fromARGB(255, 0, 68, 255),
              ),
              hintText: "Full Names",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none
            ),
          ),
        ),

 Container(
          margin: EdgeInsets.only(
            left: 20, 
            right: 20, 
            top: 20
            ),
          padding: EdgeInsets.only(
            left: 20, 
            right: 20
            ),
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
          margin: EdgeInsets.only(
            left: 20, 
            right: 20, 
            top: 20
            ),
          padding: EdgeInsets.only(
            left: 20, 
            right: 20
            ),
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
                Icons.phone,
                color: Color.fromARGB(255, 0, 68, 255),
              ),
              hintText: "Phone Number",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none
            ),
          ),
        ),


 Container(
          margin: EdgeInsets.only(
            left: 20, 
            right: 20, 
            top: 20
            ),
          padding: EdgeInsets.only(
            left: 20, 
            right: 20
            ),
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
          margin: EdgeInsets.only(
            left: 20, 
            right: 20, 
            top: 20
            ),
          padding: EdgeInsets.only(
            left: 20, 
            right: 20
            ),
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
              hintText: "Confirm Password",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none
            ),
          ),
        ),


         GestureDetector(
          onTap: () =>{
             Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DashboardScreen())),
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 40),
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
              'Register',
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
              Text('Already have account? '),
              GestureDetector(
                onTap: () =>{
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => LoginScreen())
                    ),
                },
                child: Text(
                  'Login',
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