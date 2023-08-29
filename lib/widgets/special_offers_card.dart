import 'package:flutter/material.dart';

class SpecialOffersCard extends StatelessWidget {
  const SpecialOffersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        height: 350,
        width: 180,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 30),
              child: Text(
                'شگفت انگیز اختصاصی اپ',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/image/products/phone.jpg',
              height: 130,
            ),
            const SizedBox(height: 10),
            Flexible(
              child: Text(
                  'گوشی موبایل اپل مدل iPhone 13 CH دو سیم‌ کارت ظرفیت 128 گیگابایت و رم 4 گیگابایت',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.black),
                  textDirection: TextDirection.rtl),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'تومان',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '۵۰۰,۰۰۰',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    child: Text(
                      '۵۰%',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: Theme.of(context).colorScheme.background,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                '۵۰۰,۰۰۰',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 1.5,
                    ),
              ),
            ),
            const SizedBox(height: 10),
            LinearProgressIndicator(
              value: 0.5,
              color: Theme.of(context).colorScheme.secondary,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '۵۰:۰۰',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    const Text('فروش رفته',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                    Text(
                      ' ۵۰%',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
