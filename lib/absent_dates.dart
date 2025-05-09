import 'package:flutter/material.dart';

class AttendancePage extends StatelessWidget {
  final List<String> children = ['Alice', 'Bob', 'Carlie'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          SizedBox.expand(
            child: Image.asset('images/background.png', fit: BoxFit.cover),
          ),

          // Overlay with content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),

                  // Title
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Attendance page',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Days
                  ...[
                    'Monday',
                    'Tuesday',
                    'Wednesday',
                    'Thursday',
                    'Friday',
                  ].map((day) => _buildDayRow(day, children)).toList(),

                  const SizedBox(height: 20),

                  // Save Button
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 14,
                        ),
                      ),
                      onPressed: () {
                        // Save logic here
                      },
                      child: const Text('Save changes'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDayRow(String day, List<String> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          color: Colors.white,
          child: Text(
            day,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            // Label
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: const Text("child's name"),
            ),

            const SizedBox(width: 8),

            // Dropdown
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                color: Colors.white,
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: null,
                  hint: const Text('Select'),
                  underline: const SizedBox(),
                  onChanged: (value) {
                    // You’d need to use a StatefulWidget or state management for real logic
                  },
                  items:
                      children
                          .map(
                            (child) => DropdownMenuItem(
                              value: child,
                              child: Text(child),
                            ),
                          )
                          .toList(),
                ),
              ),
            ),

            const SizedBox(width: 8),

            // Present Button
            Container(
              color: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: const Text(
                'Present',
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(width: 8),

            // Absent Button
            Container(
              color: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: const Text(
                'Absent',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
