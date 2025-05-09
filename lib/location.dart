import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController linkController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Location', style: TextStyle(color: Colors.black)),
      ),
      body: Stack(
        children: [
          Image.asset(
            'images/background.png',
            width: double.infinity,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Share your location",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text(
                        "Link-: ",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Expanded(
                        child: TextField(
                          controller: linkController,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            hintText: "_________________________________",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Handle location link submission
                      final link = linkController.text;
                      print("Location link: $link");
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Location link added')),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Add"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
