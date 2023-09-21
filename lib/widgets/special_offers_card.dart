import 'package:digikala_ui/function/format_prices.dart';
import 'package:digikala_ui/function/get_discount.dart';
import 'package:digikala_ui/screen/detail_product.dart';
import 'package:flutter/material.dart';

class SpecialOffersCard extends StatelessWidget {
  const SpecialOffersCard({
    super.key,
    required this.id,
    required this.title,
    required this.price,
    required this.beforePrice,
    required this.imagePath,
  });

  final String id;
  final String title;
  final String imagePath;
  final int price;
  final int beforePrice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailProduct(id: id),
          ));
        },
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
                imagePath,
                height: 130,
              ),
              const SizedBox(height: 10),
              Flexible(
                child: Text(title,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
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
                          const SizedBox(width: 1),
                          Text(
                            formatPrices(price),
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        formatPrices(beforePrice),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 1.5,
                            ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      child: Text(
                        '${getDiscount(price, beforePrice).toString()}%',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              LinearProgressIndicator(
                value: 0.6,
                color: Theme.of(context).colorScheme.secondary,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '1:50:02',
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
                        ' 60%',
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
      ),
    );
  }
}
