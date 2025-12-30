import 'package:flutter/material.dart';
import 'dart:async';
import '../auth/login_page.dart'; // adjust path as needed


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

    void initState() {
    super.initState();
    // Start timer when widget initializes
    Timer(const Duration(seconds: 2), () {
      // Navigate to login page and remove splash from stack
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    });
  }


  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: AssetImage('assets/24connect.png'),
          width: 180, // adjust size if needed
        ),
      ),
    );
  }
}
