import 'package:flutter/material.dart';

void main() {
  runApp(SchoolBusApp());
}

class SchoolBusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BusStopScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BusStopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('images/background.png', fit: BoxFit.cover),
          Container(
            color: Colors.black.withOpacity(0.4), // For dark overlay
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 50,
                  child: Row(
                    children: [
                      Icon(Icons.stop_circle_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Stop',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search student',
                          ),
                        ),
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 150,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    child: Text('Pick up'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
