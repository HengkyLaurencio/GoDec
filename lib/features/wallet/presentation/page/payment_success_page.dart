import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentSuccessPage extends StatelessWidget {
  final String targetScreen;
  final VoidCallback? onTap;

  const PaymentSuccessPage(
      {super.key, this.targetScreen = "/wallet", this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Payment Success'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 100,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Payment Successful!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Your payment has been processed successfully.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      context.push(targetScreen);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.onSurface,
                      minimumSize: const Size(double.infinity, 50),
                      textStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Return to Wallet'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
