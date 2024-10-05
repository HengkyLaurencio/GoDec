import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:godec/features/home/presentation/widget/features_button.dart';

import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar fitur dengan nama dan ikon masing-masing
    final List<Map<String, dynamic>> features = [
      {
        'title': 'CarDec',
        'icon': Icons.directions_car,
      },
      {
        'title': 'BikeDec',
        'icon': Icons.motorcycle,
      },
      {
        'title': 'TransitDec',
        'icon': Icons.train,
      },
      {
        'title': 'TiatiDec',
        'icon': Icons.security,
      },
    ];

    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(features.length, (index) {
        return createFeaturesButton(
          title: features[index]['title'],
          icon: features[index]['icon'],
          onTap: () {
            switch (index) {
              case 0:
                context.push('/order');
                break;
              case 1:
                context.push('/order');
                break;
              case 2:
                context.push('/transit');
                break;
              case 3:
                context.push('/insurance');
                break;
            }
          },
        );
      }),
    );
  }
}
