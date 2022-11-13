import 'package:firebase_signin_signup/screens/home_page.dart';
import 'package:firebase_signin_signup/screens/login_screen.dart';
import 'package:firebase_signin_signup/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen': (context) => const SplashScreen(),
        'login_screen': (context) => const LoginScreen(),
        'home_page': (context) => const HomePage(),
      },
    ),
  );
}
