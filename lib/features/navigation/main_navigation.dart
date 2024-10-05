import 'package:flutter/material.dart';
import 'package:godec/features/activity/presentation/page/activity.dart';
import 'package:godec/features/promo/presentation/promo_page.dart';
import 'package:godec/features/home/presentation/page/home_page.dart';
import 'package:godec/features/wallet/presentation/page/wallet_page.dart';

class MainNavigation extends StatefulWidget {
  final int currentIndex;

  const MainNavigation({super.key, this.currentIndex = 0});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  late int _currentIndex;

  final List<Widget> _pages = [
    const HomePage(),
    const PromoPage(),
    const WalletPage(), 
    const ActivityPage(),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: Theme.of(context).colorScheme.onSurface,
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
              icon: Icon(Icons.wallet_sharp),
              label: 'Wallet',
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
