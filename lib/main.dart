import 'package:flutter/material.dart';
import 'package:more_from_below/pages/splash/splash_pages.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPages(),
    );
  }
}
