import 'package:digikala_ui/screen/cart_next_list_screen.dart';
import 'package:digikala_ui/screen/cart_screen.dart';
import 'package:digikala_ui/screen/category_screen.dart';
import 'package:digikala_ui/screen/home_screen.dart';
import 'package:digikala_ui/screen/my_digi_screen.dart';
import 'package:digikala_ui/widgets/cart_appbar.dart';
import 'package:digikala_ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 3;
  int _selectedCartPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeScreen();

    PreferredSizeWidget searchBar = AppBar(
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      shadowColor: Colors.black,
      elevation: 0.8,
      title: const SearchBarWidget(),
      centerTitle: true,
    );

    PreferredSizeWidget activeAppBar = searchBar;

    void selectedPage(int index) {
      setState(() {
        _selectedPageIndex = index;
      });
    }

    void changedPage(int index) {
      setState(() {
        _selectedCartPageIndex = index;
      });
    }

    switch (_selectedPageIndex) {
      case 0:
        activePage = const MyDigiScreen();
        activeAppBar = AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        );
      case 1:
        activePage = const CartScreen();
        activeAppBar = CartAppBar(
          onChanged: changedPage,
        );
        if (_selectedCartPageIndex == 0) {
          activePage = const CartScreen();
        } else {
          activePage = const CartNextListScreen();
        }
        break;
      case 2:
        activePage = const CategoryScreen();
        activeAppBar = searchBar;
        break;
      case 3:
        activePage = const HomeScreen();
        activeAppBar = searchBar;
        break;
      default:
        activePage = const Text('No HOME');
    }

    return Scaffold(
      appBar: activeAppBar,
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
