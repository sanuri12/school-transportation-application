import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project_childtrack/activities.dart';
import 'package:myfirst_flutter_project_childtrack/stop.dart';
import 'package:myfirst_flutter_project_childtrack/location.dart';
import 'package:myfirst_flutter_project_childtrack/emergency_screen.dart';
import 'package:myfirst_flutter_project_childtrack/student_count.dart'; // <-- Make sure this file exists

void main() {
  runApp(SchoolBusDriverApp());
}

class SchoolBusDriverApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School Bus Driver',
      home: DriverHomePage(),
    );
  }
}

class DriverHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {'icon': Icons.location_on, 'title': 'Location'},
    {'icon': Icons.list_alt, 'title': 'Activities'},
    {'icon': Icons.alarm, 'title': 'Stop'},
    {'icon': Icons.emergency, 'title': 'Emergency'},
    {'icon': Icons.person, 'title': 'Parent detail'},
    {'icon': Icons.notifications, 'title': 'Notification'},
    {'icon': Icons.people_outline, 'title': 'Student Count'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.asset('images/school_bus.png', fit: BoxFit.cover),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hi Driver!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.2,
                  ),
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) {
                    String title = menuItems[index]['title'];
                    IconData icon = menuItems[index]['icon'];

                    return MenuButton(
                      icon: icon,
                      title: title,
                      onTap: () {
                        if (title == 'Activities') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ActivitiesScreen(),
                            ),
                          );
                        } else if (title == 'Stop') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BusStopScreen(),
                            ),
                          );
                        } else if (title == 'Location') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LocationScreen(),
                            ),
                          );
                        } else if (title == 'Emergency') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EmergencyScreen(),
                            ),
                          );
                        } else if (title == 'Student Count') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StudentCountScreen(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('$title feature not implemented'),
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const MenuButton({required this.icon, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(padding: EdgeInsets.all(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: Colors.black),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
