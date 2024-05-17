import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pizza_app/screens/login_screen.dart';
import 'package:pizza_app/utils/color_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splash_screen.png'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Stack(
                  children: [
                    // Text with stroke
                    Text(
                      'From Our Oven to Your Heart',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 2
                          ..color = primaryColor,
                      ),
                    ),
                    // Actual colored text
                    const Text(
                      'From Our Oven to Your Heart',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w300,
                        color: whiteColor, // Change color as needed
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Brand Name',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: whiteColor,
                    // foreground: Paint()
                    //   ..style = PaintingStyle.stroke
                    //   ..strokeWidth = 2.0
                    //   ..color = primaryColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/brand_logo.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // body: SizedBox(height: 455,width: 344,child: Image.asset('assets/images/splash_screen.png',fit: BoxFit.cover,)),
    );
  }
}
