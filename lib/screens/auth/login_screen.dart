import 'package:empowered_app/screens/auth/reset_password.dart';
import 'package:flutter/material.dart';
import 'create_account_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.08,
            vertical: height * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'SemiBold',
                  fontSize: width * 0.08,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF1E3D3D),
                ),
              ),
              SizedBox(height: height * 0.01),

              Text(
                'Hello, Welcome back to My Courses',
                style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: width * 0.04,
                  color: const Color(0xFF5B5B5B),
                ),
              ),
              SizedBox(height: height * 0.05),

              Text(
                'Email',
                style: TextStyle(
                  fontFamily: 'Medium',
                  fontSize: width * 0.04,
                  color: const Color(0xFF1E3D3D),
                ),
              ),
              SizedBox(height: height * 0.01),

              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined, color: Color(0xFFF2C94C)),
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFF2C94C), width: 1.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFF2C94C), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: height * 0.018),
                ),
              ),
              SizedBox(height: height * 0.04),

              Text(
                'Password',
                style: TextStyle(
                  fontFamily: 'Medium',
                  fontSize: width * 0.04,
                  color: const Color(0xFF1E3D3D),
                ),
              ),
              SizedBox(height: height * 0.01),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_outline, color: Color(0xFFBDBDBD)),
                  suffixIcon: const Icon(Icons.visibility_off_outlined, color: Color(0xFFBDBDBD)),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFE0E0E0), width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFF2C94C), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: height * 0.018),
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPasswordScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xFFF2C94C),
                      fontFamily: 'Medium',
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.05),

              SizedBox(
                width: double.infinity,
                height: height * 0.065,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2C94C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Medium',
                      fontSize: width * 0.045,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),

              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CreateAccountScreen()),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account?  ",
                      style: TextStyle(
                        color: const Color(0xFF1E3D3D),
                        fontSize: width * 0.04,
                      ),
                      children: const [
                        TextSpan(
                          text: "Sign up",
                          style: TextStyle(
                            color: Color(0xFFF2C94C),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
