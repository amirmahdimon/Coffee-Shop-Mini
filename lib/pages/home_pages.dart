import 'package:coffee_shop/components/bottom_nav_bar.dart';
import 'package:coffee_shop/const.dart';
import 'package:coffee_shop/pages/cart_page.dart';
import 'package:coffee_shop/pages/shop_pages.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate bottom bar
  // ignore: unused_field
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<Widget> _pages = [
    //shop page
    ShopPage(),
    //cart page
    CartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
