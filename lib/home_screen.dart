import 'package:flutter/material.dart';

import 'package:myfirst_flutter_project_childtrack/absent_dates.dart';
import 'package:myfirst_flutter_project_childtrack/create_profile.dart';
import 'package:myfirst_flutter_project_childtrack/location.dart';
import 'package:myfirst_flutter_project_childtrack/payment.dart'; // ✅ Import your payment screen

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> features = [
    {'title': 'Location', 'icon': Icons.location_on},
    {'title': 'Notifications & Emergency', 'icon': Icons.notifications_none},
    {'title': 'Bus drivers\nDetails', 'icon': Icons.person_outline},
    {'title': 'Payment', 'icon': Icons.attach_money},
    {'title': 'Absent dates', 'icon': Icons.close},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'images/school_bus.png',
                width: double.infinity,
                fit: BoxFit.cover,
                height: 200,
              ),
              Positioned(
                top: 20,
                right: 16,
                child: IconButton(
                  icon: Icon(
                    Icons.account_circle,
                    size: 40,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.2,
              ),
              itemCount: features.length,
              itemBuilder: (context, index) {
                final feature = features[index];
                return ElevatedButton(
                  onPressed: () {
                    if (feature['title'] == 'Absent dates') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AttendancePage(),
                        ),
                      );
                    } else if (feature['title'] == 'Location') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LocationScreen(),
                        ),
                      );
                    } else if (feature['title'] == 'Payment') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentScreen(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${feature['title']} is not implemented yet',
                          ),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(feature['icon'], size: 30),
                      SizedBox(height: 8),
                      Text(
                        feature['title'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
