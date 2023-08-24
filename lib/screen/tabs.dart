import 'package:digikala_ui/screen/home_screen.dart';
import 'package:digikala_ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 3;

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeScreen();

    void selectedPage(int index) {
      setState(() {
        _selectedPageIndex = index;
      });
    }

    switch (_selectedPageIndex) {
      case 3:
        activePage = const HomeScreen();
        break;
      default:
        activePage = const Text('No HOME');
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        shadowColor: Colors.black,
        elevation: 0.8,
        title: const SearchBarWidget(),
        centerTitle: true,
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedPage,
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                _selectedPageIndex == 0 ? Icons.person : Icons.person_outline),
            label: "دیجی کالای من",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedPageIndex == 1
                ? Icons.shopping_cart
                : Icons.shopping_cart_outlined),
            label: "سبد خرید",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedPageIndex == 2
                ? Icons.category
                : Icons.category_outlined),
            label: "دسته بندی ها",
          ),
          BottomNavigationBarItem(
            icon: Icon(
                _selectedPageIndex == 3 ? Icons.home : Icons.home_outlined),
            label: "خانه",
          ),
        ],
      ),
    );
  }
}
