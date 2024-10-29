import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/styles.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () => Navigator.pushReplacementNamed(context, '/onboard'));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}