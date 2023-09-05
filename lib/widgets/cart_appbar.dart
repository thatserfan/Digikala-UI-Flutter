import 'package:flutter/material.dart';

class CartAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CartAppBar({super.key, required this.onChanged});

  final void Function(int index) onChanged;

  @override
  State<CartAppBar> createState() => _CartAppBarState();

  @override
  Size get preferredSize => const Size(200, kToolbarHeight);
}

var _selectedAppBar = 0;

class _CartAppBarState extends State<CartAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: kToolbarHeight,
        width: double.infinity,
        child: Row(
          children: [
            CartAppBarItem(
              onTap: () {
                setState(() {
                  _selectedAppBar = 1;
                  widget.onChanged(_selectedAppBar);
                });
              },
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'لیست خرید بعدی',
                        style: (_selectedAppBar == 1)
                            ? Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: Theme.of(context).colorScheme.secondary)
                            : Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.grey[600]),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: (_selectedAppBar == 1)
                          ? Colors.red
                          : Colors.grey[100],
                    ),
                    height: 3,
                  ),
                ],
              ),
            ),
            CartAppBarItem(
              onTap: () {
                setState(() {
                  _selectedAppBar = 0;
                  widget.onChanged(_selectedAppBar);
                });
              },
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'سبد خرید',
                        style: (_selectedAppBar == 0)
                            ? Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: Theme.of(context).colorScheme.secondary)
                            : Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.grey[600]),
                      ),
                    ),
                  ),
                  Container(
                    height: 3,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: (_selectedAppBar == 0)
                          ? Colors.red
                          : Colors.grey[100],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartAppBarItem extends StatelessWidget {
  const CartAppBarItem({
    super.key,
    required this.child,
    required this.onTap,
  });

  final Widget child;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        highlightColor: Colors.white,
        child: child,
      ),
    );
  }
}
