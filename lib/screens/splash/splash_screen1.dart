import 'package:flutter/material.dart';
import 'package:empowered_app/screens/splash/splash_screen2.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF6FBFA),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: height * 0.30,
            left: width * -0.04,
            child: Image.asset(
              'assets/images/circles2.png',
              width: width * 1.08,
              height: width * 1.08,
              fit: BoxFit.contain,
            ),
          ),

          Positioned(
            top: height * 0.47,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SplashScreen2()),
                );
              },
              child: Container(
                width: width * 0.25,
                height: width * 0.25,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Text(
                  'ED',
                  style: TextStyle(
                    fontFamily: 'Bold',
                    fontSize: width * 0.09,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFFF2C94C),
                    letterSpacing: 0.0,
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: height * 0.60,
            child: Text(
              'EmpowerED',
              style: TextStyle(
                fontFamily: 'SemiBold',
                fontSize: width * 0.06,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF020807),
                letterSpacing: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
