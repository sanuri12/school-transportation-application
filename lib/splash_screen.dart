import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project_childtrack/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
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
              color: Color.fromARGB(255, 245, 206, 31),
              gradient: LinearGradient(
                colors: [
                  (Color.fromARGB(255, 245, 195, 31)),
                  (Color.fromARGB(255, 239, 205, 93)),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Image.asset("images/app_logo.png", width: 100, height: 100),
          ),
        ],
      ),
    );
  }
}
