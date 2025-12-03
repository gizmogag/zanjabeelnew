import 'package:flutter/material.dart';
import 'package:zanjabeel/view/account/account_screen.dart';
import 'package:zanjabeel/view/account/my_orders.dart';
import 'package:zanjabeel/view/cart/cart_empty_screen.dart';
import 'package:zanjabeel/constants/app_colors.dart';
import 'package:zanjabeel/view/home/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    MyOrdersScreen(),
    CartEmptyScreen(),
    AccountScreen(),
  ];

  final List<Map<String, String>> _iconPaths = [
    {
      'default': 'assets/images/home.png',
      'selected': 'assets/images/homew.png',
    },
    {
      'default': 'assets/images/list.png',
      'selected': 'assets/images/listw.png',
    },
    {
      'default': 'assets/images/cart.png',
      'selected': 'assets/images/cartw.png',
    },
    {
      'default': 'assets/images/profile.png',
      'selected': 'assets/images/profilew.png',
    },
  ];

  final List<String> _labels = [
    'Home',
    'Orders',
    'Cart',
    'Account',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryRed,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(4, (index) {
            bool isSelected = _selectedIndex == index;
            return GestureDetector(
              onTap: () => _onItemTapped(index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    isSelected
                        ? _iconPaths[index]['selected']!
                        : _iconPaths[index]['default']!,
                    height: 28,
                    width: 28,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _labels[index],
                    style: TextStyle(
                      color: isSelected
                          ? Colors.white
                          : const Color.fromARGB(255, 231, 181, 189),
                      fontSize: 9,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Category Screen"));
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Profile Screen"));
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Settings Screen"));
  }
}
