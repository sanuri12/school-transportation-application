import 'package:flutter/material.dart';

class NotificationEmergencyScreen extends StatelessWidget {
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
                const SizedBox(height: 40),

                // Yellow header
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.notifications_active_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Notifications & Emergency',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                // Notifications List
                Expanded(
                  child: ListView(
                    children: [
                      buildNotificationTile(
                        "School will be closed tomorrow due to rain.",
                      ),
                      buildNotificationTile(
                        "Bus #12 is delayed by 10 minutes.",
                      ),
                      buildNotificationTile(
                        "Emergency drill on Friday. Parents invited.",
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Emergency Call Button
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Add call functionality
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Calling Emergency Contact..."),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  icon: const Icon(Icons.call),
                  label: const Text(
                    'Emergency Call',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNotificationTile(String message) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        message,
        style: const TextStyle(color: Colors.black87, fontSize: 14),
      ),
    );
  }
}
