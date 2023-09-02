import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/image/empty-cart.png'),
          const Text('سبد خرید شما خالی است'),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Container(
              width: double.infinity,
              color: Colors.grey[200],
              height: 10,
            ),
          ),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('پیشنهاد برای شما',
                    style: Theme.of(context).textTheme.titleLarge),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
