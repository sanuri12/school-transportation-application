import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpScreen> {
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
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                ),
                gradient: LinearGradient(
                  colors: [(Color.fromARGB(186, 218, 215, 14))],
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
                        "Register",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
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
                cursorColor: Color.fromARGB(255, 245, 209, 31),
                decoration: InputDecoration(
                  icon: Icon(Icons.person, color: Colors.black),
                  hintText: "Full Name",
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
                cursorColor: Color.fromARGB(255, 245, 209, 31),
                decoration: InputDecoration(
                  icon: Icon(Icons.phone, color: Colors.black),
                  hintText: "Phone Number",
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
                cursorColor: Color.fromARGB(255, 245, 209, 20),
                decoration: InputDecoration(
                  icon: Icon(Icons.vpn_key, color: Colors.black),
                  hintText: "Enter Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap:
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
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
                child: Text("REGISTER", style: TextStyle(color: Colors.black)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Member"),
                  GestureDetector(
                    onTap:
                        () => {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          ),
                        },
                    child: Text(
                      "Login Now",
                      style: TextStyle(color: Color.fromARGB(181, 184, 194, 4)),
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
