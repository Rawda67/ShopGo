import 'package:ecommerce_app/Screens/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../Constant.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final pageDecorstion = PageDecoration(
    titleTextStyle: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      color: Constant.primaryColor,
    ),
    bodyTextStyle: const TextStyle(
      fontSize: 20,
      color: Colors.black54,
    ),
    bodyPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
    pageColor: Colors.white,
    imagePadding: const EdgeInsets.all(0),
    imageAlignment: Alignment.bottomCenter,
  );
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: " Welcome to ShopGo",
          body: "Say hello to a smarter way to shop. Everything you need is just a tap away!",
          image: Image.asset("assets/page1.png",height: 350,width: 300,),
          decoration: pageDecorstion,
        ),
        PageViewModel(
          title: "Personalized For You",
          body: "Get tailored deals, suggestions, and exclusive offers based on your preferences.",
          image: Image.asset("assets/page2.png",height: 350,width: 300,),
          decoration: pageDecorstion,
        ),
        PageViewModel(
          title: "Safe & Simple Payments",
          body: "Shop with confidence. Multiple payment methods and full security with every purchase.",
          image: Image.asset("assets/page3.png",height: 350,width: 300,),
          decoration: pageDecorstion,
        ),
        PageViewModel(
          title: " Fast & Reliable Delivery",
          body: "Track your orders in real-time and enjoy lightning-fast delivery to your doorstep.",
          image: Image.asset("assets/page4.png",height: 350,width: 300,),
          decoration: pageDecorstion,
        ),
        PageViewModel(
          title: "Let's Get Started!",
          body: "Create your account and unlock a world of seamless shopping.",
          image: Image.asset("assets/page5.png",height: 350,width: 300,),
          decoration: pageDecorstion,
        ),
      ],
      showSkipButton: false,
      showDoneButton: true,
      showBackButton: true,

      next: Text(
        "Next",
        style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w600),
      ),

      done: Text(
        "Get Started",
        style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600),
      ),
      back: Text(
        "Back",
        style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w600),
      ),
      onDone: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup(),));
      },

      dotsDecorator: DotsDecorator(
        size: Size.square(10),
        activeSize: Size(25, 10),
        activeColor: Constant.primaryColor,
        color: Colors.black45,
        spacing: EdgeInsets.all(3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
