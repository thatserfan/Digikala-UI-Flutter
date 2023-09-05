import 'package:flutter/material.dart';

class CartNextListScreen extends StatelessWidget {
  const CartNextListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/image/empty-sfl.png',
              height: 150,
            ),
            Text(
              '!لیست خرید بعدی شما خالی است',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),
            const Text(
                'شما می‌توانید محصولاتی که به سبد خرید خود افزوده‌اید و فعلا قصد خرید آن‌ها را ندارید، در لیست خرید بعدی قرار داده و هر زمان مایل بودید آن‌ها را به سبد خرید اضافه کرده و خرید آن‌ها را تکمیل کنید',
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
