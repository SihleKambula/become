import 'package:flutter/material.dart';
import 'package:story/wrapper.dart';

void main() {
  runApp(const Become());
}

class Become extends StatefulWidget {
  const Become({super.key});

  @override
  State<Become> createState() => _BecomeState();
}

class _BecomeState extends State<Become> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(scaffoldBackgroundColor: Colors.white),
      home: const Wrapper(),
    );
  }
}
