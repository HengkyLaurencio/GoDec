import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 440,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: screenWidth,
                      height: 250,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 47, 47, 47),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 6,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 215, 213, 213),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: Color.fromARGB(255, 47, 47, 47),
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 75,
                      left: 20,
                      right: 20,
                      child: Container(
                        height: 325,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 20, 24, 63),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                    top: 75,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: 290,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 239, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Destination Places",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "For those of you who want to go somewhere",
                            style: TextStyle(fontSize: 12),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.only(
                              right: 10,
                              left: 10,
                            ),
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 35,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Destination Location',
                                prefixIcon: const Icon(Icons.location_on),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 0.0),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(
                                width: 70,
                                height: 25,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                width: 23,
                                height: 23,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 171, 157, 156),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              width: screenWidth,
              height: 230,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 20, 24, 63),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
