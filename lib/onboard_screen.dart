import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  //On done
  void _onIntroEnd(context) {
    // ignore: avoid_print
    print('Done');
  }

  //image building
  Widget _buildImage(String assetsName, [double width = 250]) {
    return Image.asset(
      'assets/images/$assetsName',
      width: width,
    );
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      bodyTextStyle: TextStyle(color: Colors.grey, fontSize: 16),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    );

    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Colors.black,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
          ),
          baseBtnStyle: TextButton.styleFrom(foregroundColor: Colors.black),
          autoScrollDuration: 3000,
          showNextButton: false,
          onDone: () => _onIntroEnd(context),
          done: const Text('Done'),
          showSkipButton: true,
          skip: const Text('Skip'),
          pages: [
            PageViewModel(
              title: 'Document your journey',
              body: 'Create a story for people to follow',
              image: _buildImage('create.png'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Share with the world",
              body: "Share every step on your journey with the world.",
              image: _buildImage('share.png'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Save your moments",
              body: "Save your favourite moments for the future.",
              image: _buildImage('follow.png'),
              decoration: pageDecoration,
            ),
          ],
        ),
      ),
    );
  }
}
