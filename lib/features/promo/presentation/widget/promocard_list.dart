import 'package:flutter/material.dart';

class PromocardList extends StatelessWidget {
  final String title;
  final String valid;

  const PromocardList({super.key, required this.title, required this.valid});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(1, 2),
                blurRadius: 5,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Container(
                width: screenWidth - 30,
                height: 138,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://www.geaves.com/media/catalog/product/cache/acd115faf6a75f6594ab269049b631ed/3/1/31552_5.webp'))),
              ),
            ),
            Container(
              width: screenWidth-30,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        valid,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Container(
                            alignment: Alignment.center,
                            width: 55,
                            height: 35,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFF23274D),
                            ),
                            child: const Text('Use',
                                style: TextStyle(fontSize: 13.5 ,color: Colors.white, fontWeight: FontWeight.w800),
                                ),
                            )
                          ]
                        )
                      )
                      
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
