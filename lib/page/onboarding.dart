import 'package:flutter/material.dart';
import 'package:food_delivery_app/styles.dart';

class OnboardingPage extends StatelessWidget {
  static const routeName = '/onboard';
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/hero.png', width: 240, height: 292),
            const SizedBox(height: 63),
            const Text('All Your Favorites', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24)),
            const SizedBox(height: 18),
            const Text('Get all your loved foods in one once place\n, you just place the orer we do the rest'),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 21.4),
              width: double.infinity,
              height: 62,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                ),
                child: const Text('Login', style: TextStyle(fontSize: 20)),
              ),
            ),
            const SizedBox(height: 18),
            const Text('Skip'),
          ],
        ),
      ),
    );
  }
}