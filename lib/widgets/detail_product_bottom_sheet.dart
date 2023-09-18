import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailProductBottomSheet extends StatelessWidget {
  const DetailProductBottomSheet(
      {super.key, required this.price, this.beforePrice});

  final int price;
  final int? beforePrice;

  @override
  Widget build(BuildContext context) {
    final formater = NumberFormat("#,##0");
    String formatPrice = formater.format(price);
    String? formatBeforePrice =
        beforePrice != null ? formater.format(beforePrice) : null;

    return Material(
      elevation: 10,
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (formatBeforePrice != null)
                        Row(
                          children: [
                            Text(
                              formatBeforePrice.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                    decorationThickness: 1.5,
                                  ),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                                child: Text(
                                  '${(((beforePrice! - price) / beforePrice!.abs()) * 100).toInt()}%',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      Row(
                        children: [
                          Text(
                            'تومن',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            formatPrice,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  foregroundColor: Theme.of(context).colorScheme.onSecondary,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  child: Text(
                    'افزودن به سبد خرید',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
