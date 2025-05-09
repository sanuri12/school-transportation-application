import 'package:flutter/material.dart';

class StudentCountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset('images/background.png', fit: BoxFit.cover),
          // Dark overlay
          Container(color: Colors.black.withOpacity(0.5)),
          // Content
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 40),
                // Yellow header
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.people_outline),
                      SizedBox(width: 10),
                      Text(
                        'Student count',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                // Total count field
                Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Total',
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
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
