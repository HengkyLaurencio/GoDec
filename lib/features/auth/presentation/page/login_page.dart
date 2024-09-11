import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:godec/features/auth/presentation/page/forgot_password_page.dart';
import 'package:godec/features/auth/presentation/page/signup_page.dart';
import 'package:godec/features/auth/presentation/widget/auth_bottom.dart';
import 'package:godec/features/auth/presentation/widget/auth_checkbox.dart';
import 'package:godec/features/auth/presentation/widget/auth_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.black));

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/BG_Auth_1.png'),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height: 160),
                  const Text('GoDec', style: TextStyle(fontSize: 60.0)),
                  const SizedBox(height: 130),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        const AuthField(
                            label: 'Email',
                            type: TextInputType.emailAddress,
                            password: false),
                        const SizedBox(height: 10.0),
                        const AuthField(
                            label: 'Password',
                            type: TextInputType.text,
                            password: true),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const AuthCheckbox(text: 'Remember Me'),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgotPasswordPage()));
                              },
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surface),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: const Text('Login'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: AuthBottom(
            text: "Don't have any account",
            route: MaterialPageRoute(builder: (context) => const SignupPage()),
            bgColor: Theme.of(context).colorScheme.onSurface,
            color: Theme.of(context).colorScheme.surface));
  }
}
