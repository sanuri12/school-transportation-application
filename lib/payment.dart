import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('images/background.png', fit: BoxFit.cover),
          Container(color: Colors.black.withOpacity(0.5)),
          SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.payment),
                      SizedBox(width: 10),
                      Text(
                        'Card Payment',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),

                // Cardholder Name
                buildTextField(label: "Cardholder Name"),

                const SizedBox(height: 15),

                // Card Number
                buildTextField(
                  label: "Card Number",
                  keyboardType: TextInputType.number,
                ),

                const SizedBox(height: 15),

                // Row for Expiry and CVV
                Row(
                  children: [
                    Expanded(
                      child: buildTextField(label: "Expiry Date (MM/YY)"),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: buildTextField(label: "CVV", obscureText: true),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // Pay Button
                ElevatedButton(
                  onPressed: () {
                    // TODO: Add payment logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Processing Payment...")),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.yellow[700],
                    foregroundColor: Colors.black,
                  ),
                  child: const Text(
                    'Pay Now',
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

  Widget buildTextField({
    required String label,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
