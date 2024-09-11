import 'package:flutter/material.dart';

class PromoForm extends StatelessWidget {
  const PromoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Have a promo code? ",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'eg. GODEC2024',
                hintStyle: TextStyle(color: Colors.grey),
                labelText: "Enter your promo code below to redeem it.",
              ),
            ),
            const SizedBox(height: 20),
            const Spacer(), 
            SizedBox(
              width: double.infinity, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF23274D), 
                  padding: const EdgeInsets.symmetric(vertical: 15), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), 
                  ),
                  elevation: 10,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Promo Submitted"),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 16), // Text size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
