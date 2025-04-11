import 'dart:async';
import 'package:flutter/material.dart';
import '../Constant.dart';
import 'OnBoarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds:1),
            ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoarding(),))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/splashback.jpg"),
            opacity: 0.1,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          spacing: 30,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/splashIcon.png",height: 270,width: 300,),
            Text("ShopGo",style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Constant.primaryColor,
            ),)
          ],
        ),
      ),
    );
  }
}
