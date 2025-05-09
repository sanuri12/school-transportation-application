import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project_childtrack/bus_driver_home.dart';

import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  String selectedRole = 'Parent'; // Default role selection

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
                  bottomLeft: Radius.circular(90),
                ),
                color: Color.fromARGB(255, 245, 206, 31),
                gradient: LinearGradient(
                  colors: [
                    (Color.fromARGB(255, 245, 206, 31)),
                    (Color.fromARGB(255, 216, 218, 103)),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Image.asset(
                        "images/app_logo.png",
                        height: 90,
                        width: 90,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 20),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE),
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color.fromARGB(255, 245, 209, 31),
                decoration: InputDecoration(
                  icon: Icon(Icons.person, color: Colors.black),
                  hintText: "User Name",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE),
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color.fromARGB(255, 245, 209, 31),
                decoration: InputDecoration(
                  icon: Icon(Icons.vpn_key, color: Colors.black),
                  hintText: "Enter password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Text(
                    "Login as:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Parent',
                            groupValue: selectedRole,
                            onChanged: (value) {
                              setState(() {
                                selectedRole = value!;
                              });
                            },
                          ),
                          Text('Parent'),
                        ],
                      ),
                      SizedBox(width: 20),
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Bus Driver',
                            groupValue: selectedRole,
                            onChanged: (value) {
                              setState(() {
                                selectedRole = value!;
                              });
                            },
                          ),
                          Text('Bus Driver'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Text("Forget Password?"),
                onTap: () => {},
              ),
            ),
            GestureDetector(
              onTap:
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SchoolBusDriverApp(),
                      ),
                    ),
                  },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      (Color.fromARGB(255, 245, 227, 31)),
                      (Color.fromARGB(255, 241, 204, 70)),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE),
                    ),
                  ],
                ),
                child: Text("LOGIN", style: TextStyle(color: Colors.black)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("don't Have Account?"),
                  GestureDetector(
                    onTap:
                        () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          ),
                        },
                    child: Text(
                      "Register Now",
                      style: TextStyle(color: Color.fromARGB(199, 198, 195, 6)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
