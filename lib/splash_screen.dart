import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sara_store/constants.dart';
import 'package:sara_store/screens/main_screen.dart';
import 'package:show_up_animation/show_up_animation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    init();
  }

  init() async {
    Timer(
      const Duration(seconds: 3),
      (() {
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainScreen(
              title: 'Sara Store',
            ),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ShowUpAnimation(
              delayStart: Duration(milliseconds: 0),
              animationDuration: Duration(seconds: 3),
              curve: Curves.fastOutSlowIn,
              direction: Direction.vertical,
              offset: 1,
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                  'assets/icons/logo.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
