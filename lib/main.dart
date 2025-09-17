import 'package:flutter/material.dart';
import 'package:jelajah_nusantara/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jelajah Nusantara',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}