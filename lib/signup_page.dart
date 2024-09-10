import 'package:flutter/material.dart';
import 'package:godec/login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(height: 30.0),
                const Text('Sign Up', style: TextStyle(fontSize: 24)),
                const SizedBox(height: 60.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                  keyboardType: TextInputType.number,
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
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Re-Enter Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20.0),
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
                      backgroundColor: Theme.of(context).colorScheme.onSurface),
                  child: Text(
                    'Register',
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.surface),
                  ),
                ),
                const SizedBox(height: 40.0),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          },
          child: const Text("Already have an account?"),
        ),
      ),
    );
  }
}
