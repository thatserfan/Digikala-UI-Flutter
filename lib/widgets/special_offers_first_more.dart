import 'package:flutter/material.dart';

class SpecialOffersFirstMore extends StatelessWidget {
  const SpecialOffersFirstMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 35,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/image/special-offers/Amazings.png',
            height: 100,
          ),
          Image.asset(
            'assets/image/special-offers/box.png',
            height: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios,
                    color: Theme.of(context).colorScheme.background, size: 15),
                Text(
                  'مشاهده همه',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.background),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
