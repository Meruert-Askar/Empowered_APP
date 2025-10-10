import 'package:flutter/material.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: height * 0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black87),
              onPressed: () => Navigator.pop(context),
            ),
            SizedBox(height: height * 0.02),

            Text(
              "Reset Password",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: width * 0.065,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: height * 0.015),

            Text(
              "Please fill in the field below to reset your current password.",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: width * 0.04,
                color: Colors.grey[600],
                height: 1.5,
              ),
            ),
            SizedBox(height: height * 0.04),

            Text(
              "New Password",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: width * 0.04,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: height * 0.01),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_outline, color: Color(0xFFF2C94C)),
                suffixIcon: const Icon(Icons.visibility_off_outlined, color: Colors.grey),
                hintText: "New Password",
                hintStyle: TextStyle(color: Colors.grey[400]),
                contentPadding: EdgeInsets.symmetric(vertical: height * 0.02),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                ),
              ),
            ),
            SizedBox(height: height * 0.03),

            Text(
              "Confirm Password",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: width * 0.04,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: height * 0.01),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_outline, color: Color(0xFFF2C94C)),
                suffixIcon: const Icon(Icons.visibility_off_outlined, color: Colors.grey),
                hintText: "Confirm Password",
                hintStyle: TextStyle(color: Colors.grey[400]),
                contentPadding: EdgeInsets.symmetric(vertical: height * 0.02),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                ),
              ),
            ),
            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: height * 0.065,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF2C94C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                },
                child: Text(
                  "Confirm Reset Password",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: width * 0.045,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
          ],
        ),
      ),
    );
  }
}
