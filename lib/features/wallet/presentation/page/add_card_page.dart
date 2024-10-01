import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  final _formKey = GlobalKey<FormState>();

  String? cardNumber;
  String? expiryDate;
  String? cvv;

  bool cardAdded = false;

  final TextEditingController expiryDateController = TextEditingController();

  @override
  void dispose() {
    expiryDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Card Number',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter card number',
                      ),
                      keyboardType: TextInputType.number,
                      maxLength: 16,
                      validator: (value) {
                        if (value == null || value.isEmpty || value.length != 16) {
                          return 'Please enter a valid card number';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        cardNumber = value;
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Expiry Date',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 80,
                                child: TextFormField(
                                  controller: expiryDateController,
                                  decoration: const InputDecoration(
                                    hintText: 'MM/YY',
                                  ),
                                  keyboardType: TextInputType.datetime,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9/]')),
                                    LengthLimitingTextInputFormatter(5),
                                  ],
                                  validator: (value) {
                                    if (value == null || !RegExp(r'^(0[1-9]|1[0-2])\/([0-9]{2})$').hasMatch(value)) {
                                      return 'Please enter a valid expiry date';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    expiryDate = value;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'CVV',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 80,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'CVV',
                                  ),
                                  keyboardType: TextInputType.number,
                                  maxLength: 3,
                                  validator: (value) {
                                    if (value == null || value.length != 3) {
                                      return 'Please enter a valid CVV';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    cvv = value;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            setState(() {
                              cardAdded = true;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Card added successfully')),
                            );
                          }
                        },
                        child: const Text('Add Card'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              if (cardAdded)
                Center(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: Theme.of(context).colorScheme.onSurface,
                    child: Container(
                      width: 400,
                      height: 200,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Credit Card',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            cardNumber != null
                                ? cardNumber!.replaceAllMapped(RegExp(r'.{4}'), (match) => '${match.group(0)} ')
                                : 'XXXX XXXX XXXX XXXX',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              letterSpacing: 2.0,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Expiry Date',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    expiryDate ?? 'MM/YY',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'CVV',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    cvv ?? 'XXX',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
