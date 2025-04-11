import 'package:flutter/material.dart';

import 'Constant.dart';
import 'Screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      theme: ThemeData(
        scaffoldBackgroundColor: Constant.backColor,
        primaryColor: Constant.primaryColor,
      ),
      home: SplashScreen(),
    );
  }
}


