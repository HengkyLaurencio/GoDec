import 'package:flutter/material.dart';
import 'package:godec/features/page/activity.dart';
import 'package:godec/features/promo/presentation/promo_page.dart';
import 'package:godec/features/wallet/presentation/page/wallet.dart';
import '../home/presentation/page/home_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const PromoPage(),
    const WalletPage(),
    const WhiteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.percent_rounded),
              label: 'Promo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              label: 'Payment',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'Activity',
            ),
          ],
        ),
      ),
    );
  }
}
