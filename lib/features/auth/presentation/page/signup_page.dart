import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:godec/features/auth/presentation/page/login_page.dart';

import '../widget/auth_bottom.dart';
import '../widget/auth_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.black));

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/BG_Auth_2.png'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height: 20.0),
                  Text('Sign Up', style: TextStyle(fontSize: 24, color: Theme.of(context).colorScheme.surface)),
                  const SizedBox(height: 100.0),
                  const AuthField(
                      label: 'Name', type: TextInputType.name, password: false),
                  const SizedBox(height: 10.0),
                  const AuthField(
                      label: 'Email',
                      type: TextInputType.emailAddress,
                      password: false),
                  const SizedBox(height: 10.0),
                  const AuthField(
                      label: 'Phone Number',
                      type: TextInputType.number,
                      password: false),
                  const SizedBox(height: 10.0),
                  const AuthField(
                      label: 'Password',
                      type: TextInputType.text,
                      password: true),
                  const SizedBox(height: 10.0),
                  const AuthField(
                      label: 'Re-Enter Password',
                      type: TextInputType.emailAddress,
                      password: true),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (bool? value) {},
                            ),
                            const SizedBox(width: 8.0),
                            const Flexible(
                              child: Text(
                                'I have read and agree to the terms of service and privacy policy',
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50),
                        backgroundColor:
                            Theme.of(context).colorScheme.onSurface),
                    child: Text(
                      'Register',
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
      ),
      bottomNavigationBar: AuthBottom(
            text: "Already have an account?",
            route: MaterialPageRoute(builder: (context) => const LoginPage()),
            bgColor: Theme.of(context).colorScheme.surface,
            color: Theme.of(context).colorScheme.onSurface)
    );
  }
}
