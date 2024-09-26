import 'package:flutter/material.dart';
import 'package:notes_app/home.dart'; // Adjust the import according to your project structure

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to home screen after a short delay
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Change to your desired background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Show logo and text simultaneously
            Image.asset(
              'assets/images/logo.png', // Your logo path
              width: 100, // Set the logo width to 100
              height: 100, // Maintain aspect ratio
            ),
            const SizedBox(height: 20), // Space between logo and text
            const Text(
              'Todo APP',
              style: TextStyle(
                fontSize: 24, // Adjust font size as needed
                fontWeight: FontWeight.bold,
                color: Colors.black, // Set text color to black
              ),
            ),
          ],
        ),
      ),
    );
  }
}
