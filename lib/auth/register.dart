import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    foregroundColor: Colors.black87,
    minimumSize: const Size(100, 45),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
    backgroundColor: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'BE',
                  style: TextStyle(fontFamily: 'Abril Fatface', fontSize: 45),
                ),
                const Text(
                  'Let\'s get started',
                  style: TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Create a new account',
                  style: TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.w100),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'User Name',
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100,
                    ),
                    prefixIcon: const Icon(Icons.person_outline_rounded),
                    prefixIconColor: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Your Email',
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100,
                    ),
                    prefixIcon: const Icon(Icons.alternate_email_rounded),
                    prefixIconColor: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100,
                    ),
                    prefixIcon: const Icon(Icons.lock_outline_rounded),
                    prefixIconColor: Colors.grey,
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    print('We are with in');
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'or',
                  style: TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    print('We are with in');
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300),
                    child: const Center(
                        child: Text(
                      'Sign up with Google',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Have an account?',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.cyan),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
