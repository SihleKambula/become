import 'package:flutter/material.dart';
import 'package:story/auth/login.dart';
import 'package:story/auth/register.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return const RegisterScreen();
  }
}
