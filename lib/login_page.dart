import 'package:flutter/material.dart';
import 'package:godec/forgot_password_page.dart';
import 'package:godec/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 160),
              const Text('GoDec', style: TextStyle(fontSize: 60.0)),
              const SizedBox(height: 70),
              Container(
                padding: const EdgeInsets.all(16.0),
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                      obscureText: true,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (bool? value) {},
                            ),
                            const Text('Remember Me'),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPasswordPage()));
                          },
                          child: const Text('Forgot Password?'),
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
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const SignupPage()));
          },
          child: const Text("Don't have any account?"),
        ),
      ),
    );
  }
}
