import 'package:flutter/material.dart';
import '../auth/create_account_screen.dart';
import '../auth/login_screen.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF6FBFA),
      body: Stack(
        children: [
          Positioned(
            top: height * -0.05,
            left: width * 0.25,
            child: Image.asset(
              'assets/images/circles.png',
              width: width * 0.8,
              fit: BoxFit.cover,
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.12),
              child: Image.asset(
                'assets/images/welcome_illustration.png',
                height: height * 0.45,
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: height * 0.48,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.08,
                  vertical: height * 0.05,
                ),
                child: Column(
                  children: [
                    Text(
                      'Welcome To MyCourses',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'SemiBold',
                        fontSize: width * 0.06,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1E3D3D),
                      ),
                    ),
                    SizedBox(height: height * 0.03),

                    Text(
                      'Enjoy the various best courses we have, choose\n the category according to your wishes.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Regular',
                        fontSize: width * 0.039,
                        color: const Color(0xFF5B5B5B),
                      ),
                    ),
                    SizedBox(height: height * 0.1),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: height * 0.03),
                        child: Image.asset(
                          'assets/images/dots.png',
                          height: height * 0.04,
                        ),
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF2C94C),
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.30,
                          vertical: height * 0.018,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontFamily: 'Medium',
                          fontSize: width * 0.045,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateAccountScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Don't have an account",
                        style: TextStyle(
                          fontFamily: 'Medium',
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFF2C94C),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
