import 'package:assignment_coding_junior/profile_page.dart';
import 'package:flutter/material.dart';


class PaymentSuccessApp extends StatelessWidget {
  const PaymentSuccessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PaymentSuccessPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // light grey background
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF5F7FA), // Light grayish background
              Color(0xFFE2EBF0), // Slightly darker shade for depth
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Success icon with confetti
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Confetti-like decorations
                      const Positioned(
                        top: -15,
                        right: 15,
                        child: Icon(Icons.star, color: Colors.orange, size: 24),
                      ),
                      const Positioned(
                        top: 10,
                        left: -10,
                        child: Icon(Icons.star, color: Colors.red, size: 16),
                      ),
                      const Positioned(
                        bottom: -15,
                        left: 15,
                        child: Icon(Icons.star, color: Colors.green, size: 24),
                      ),
                      // Success checkmark
                      Container(
                        padding: const EdgeInsets.all(24.0),
                        decoration: const BoxDecoration(
                          color: Colors.teal, // Success circle color
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.check, size: 40, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  // Payment Success Text
                  const Text(
                    "Payment Success",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  // Amount
                  const Text(
                    "\$35.00",
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  // Transaction Details Container
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Profile and Course Info
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30, // You can adjust the radius as per your need
                              backgroundColor: Colors.transparent, // Optional: Set background color to transparent or another color
                              child: ClipOval(
                                child: Image.asset(
                                  'images/student1.png',
                                  fit: BoxFit.cover, // Ensures the image covers the whole avatar without distortion
                                  width: 60, // Width and height should match the diameter (2 * radius) of CircleAvatar
                                  height: 60,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Christiana Amandla",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Adobe Xd Editing Course",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        // Transaction Info (ID and Date)
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ID Transcription",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "TA11231PW",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Invoice Date",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Nov 14, 2023",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        // Barcode (Placeholder)
                        Center(
                          child: Container(
                            color: Colors.black,
                            height: 40,
                            width: double.infinity,
                            child: const Center(
                              child: Text(
                                "||||||||||||||||||||||||||||||||",
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  // Done Button
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB5E49E), // Done button color
                      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 100.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      "Done",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
