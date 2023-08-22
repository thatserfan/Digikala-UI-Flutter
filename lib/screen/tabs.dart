import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        shadowColor: Colors.black,
        elevation: 0.8,
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "دیجی کالای من",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "سبد خرید",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: "دسته بندی ها",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "خانه",
          ),
        ],
      ),
    );
  }
}
