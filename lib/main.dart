import 'package:flutter/material.dart';
import 'screens/splash/splash_screen1.dart';
import 'screens/splash/splash_screen2.dart';
import 'screens/auth/login_screen.dart';

void main() {
  runApp(const EmpowerEDApp());
}

class EmpowerEDApp extends StatelessWidget {
  const EmpowerEDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EmpowerED',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/welcome': (context) => const SplashScreen2(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
