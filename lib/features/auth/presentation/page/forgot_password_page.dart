import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widget/auth_bottom.dart';
import '../widget/auth_field.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.black));

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/BG_Auth_1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(height: 30.0),
                      const Text('Forgot Password',
                          style: TextStyle(fontSize: 24)),
                      const SizedBox(height: 60.0),
                      const AuthField(
                          label: 'Enter Your Email',
                          type: TextInputType.emailAddress,
                          password: false),
                      const SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 50),
                          backgroundColor:
                              Theme.of(context).colorScheme.onSurface,
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.surface),
                        ),
                      ),
                      const SizedBox(height: 40.0),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: AuthBottom(
            text: "Already have an account?",
            route: '/auth/login',
            bgColor: Theme.of(context).colorScheme.onSurface,
            color: Theme.of(context).colorScheme.surface));
  }
}
