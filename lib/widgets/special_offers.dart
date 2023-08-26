import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      child: SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Card(
              child: Container(
                height: 280,
                width: 150,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 20),
                    child: Text('شگفت انگیز اختصاصی اپ',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold)),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
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
                            color: Theme.of(context).colorScheme.background,
                            size: 15),
                        Text(
                          'مشاهده همه',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.background),
                        ),
                      ],
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
