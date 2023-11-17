import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Text(
        'BE',
        style: TextStyle(
            fontFamily: 'Abril Fatface', color: Colors.white, fontSize: 96),
      )),
    );
  }
}
