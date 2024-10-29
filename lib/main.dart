import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/auth/forgot_password.dart';
import 'package:food_delivery_app/page/auth/login.dart';
import 'package:food_delivery_app/page/auth/register.dart';
import 'package:food_delivery_app/page/home/home.dart';
import 'package:food_delivery_app/page/home/search.dart';
import 'package:food_delivery_app/page/onboarding.dart';
import 'package:food_delivery_app/page/splash.dart';
import 'package:food_delivery_app/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Root widget
      theme: ThemeData(
        fontFamily: 'Sen',
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: backgroundColor,
            ),
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        OnboardingPage.routeName: (context) => const OnboardingPage(),
        LoginPage.routeName: (context) => const LoginPage(),
        ForgotPasswordPage.routeName: (context) => const ForgotPasswordPage(),
        RegisterPage.routeName: (context) => const RegisterPage(),
        HomePage.routeName: (context) => const HomePage(),
        SearchPage.routeName: (context) => const SearchPage(),
      },
    );
  }
}
