import 'package:flutter/material.dart';

class CartAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CartAppBar({super.key});

  @override
  State<CartAppBar> createState() => _CartAppBarState();

  @override
  Size get preferredSize => const Size(200, kToolbarHeight);
}

class _CartAppBarState extends State<CartAppBar> {
  @override
  Widget build(BuildContext context) {
    int _selectedPageIndex = 0;

    void selectedPage(int index) {
      setState(() {
        _selectedPageIndex = index;
      });
    }

    return const SafeArea(
      child: SizedBox(
        height: kToolbarHeight,
        width: double.infinity,
        child: Row(
          children: [
            CartAppBarItem(title: 'لیست خرید بعدی'),
            CartAppBarItem(title: 'سبد خرید'),
          ],
        ),
      ),
    );
  }
}

class CartAppBarItem extends StatelessWidget {
  const CartAppBarItem({super.key, required this.title});

  final String title;
//Id Text
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        highlightColor: Colors.white,
        onTap: () {},
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.grey[600]),
                ),
              ),
            ),
            Container(
              height: 4,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
