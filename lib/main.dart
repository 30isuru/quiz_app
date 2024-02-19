import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToQuizSelection();
  }

  void _navigateToQuizSelection() async {
    await Future.delayed(const Duration(seconds: 10));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => QuizSelectionPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue,
              Colors.green,
            ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Lottie.asset(
                'assets/splash.json', //
                height: 200, //
              ),
            ),
            Positioned(
              bottom: 20.0,
              left: MediaQuery.of(context).size.width / 2 - 120, //
              child: const Opacity(
                opacity: 0.7, //
                child: Text(
                  'Copyright © 2024 Isuru. All rights reserved.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
