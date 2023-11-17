import 'package:flutter/material.dart';
import 'package:story/auth/auth.dart';
import 'package:story/onboard_screen.dart';
import 'package:story/splash_screen.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return const Auth();
  }
}
