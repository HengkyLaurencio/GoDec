import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:godec/login_page.dart';
import 'package:godec/signup_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30), bottom: Radius.circular(0))),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20.0),
              Text('Let\'s Sign Up',
                  style: TextStyle(fontSize: 36, color: Theme.of(context).colorScheme.primary), textAlign: TextAlign.center),
              Text('to Continue',
                  style: TextStyle(fontSize: 36, color: Theme.of(context).colorScheme.primary), textAlign: TextAlign.center),
              const SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupPage()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Theme.of(context).colorScheme.onSurface
                ),
                child: Text('Sign Up', style: TextStyle(fontSize: 18, color: Theme.of(context).colorScheme.surface)),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('I Have an Account',
                    style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
