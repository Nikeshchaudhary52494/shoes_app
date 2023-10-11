import 'package:flutter/material.dart';
import 'package:shoes_app/pages/cart_page.dart';
import 'package:shoes_app/pages/shope_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ShopePgae(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
            backgroundColor: Colors.black,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            currentIndex: _selectedIndex,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  size: 30,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_rounded,
                  size: 30,
                ),
                label: "Cart",
              ),
            ]),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
