import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final String title;
  final String description;
  final Widget targetScreen;
  const CardList({super.key, 
    required this.title, 
    required this.description,
    required this.targetScreen,
    });
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetScreen),
        );
      },

      child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(1, 2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, 
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              width: 330,
              height: 138,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0)),
                image:  DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://www.geaves.com/media/catalog/product/cache/acd115faf6a75f6594ab269049b631ed/3/1/31552_5.webp',
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0),
            alignment: Alignment.centerLeft, 
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0),
            alignment: Alignment.centerLeft, 
            child: Text(  
              description,
              style: const TextStyle(fontSize: 14),
              softWrap: true, 
              overflow: TextOverflow
                  .visible, 
            ),
          ),
        ],
      ),
    )
    );
    
  }
}