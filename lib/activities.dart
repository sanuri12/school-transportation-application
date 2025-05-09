import 'package:flutter/material.dart';

void main() {
  runApp(SchoolBusApp());
}

class SchoolBusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Bus App',
      debugShowCheckedModeBanner: false,
      home: ActivitiesScreen(),
    );
  }
}

class ActivitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/bus_background.jpg',
                ), // Add your image to assets
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay Content
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 40.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // App Bar Style Container
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.menu),
                      SizedBox(width: 10),
                      Text(
                        'Activities',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Search Bar
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search student',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Drop off Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    elevation: 2,
                  ),
                  child: Text('Drop off'),
                ),
                SizedBox(height: 10),
                // Pick up Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                    elevation: 2,
                  ),
                  child: Text('Pick up'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
