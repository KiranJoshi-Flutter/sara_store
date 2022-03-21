import 'package:flutter/material.dart';
import 'package:sara_store/constants.dart';
import 'package:sara_store/screens/main_screen.dart';
import 'package:sara_store/splash_screen.dart';

import 'functions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: createMaterialColor(kPrimaryColor),
      ),
      home: SplashScreen(),
    );
  }
}
