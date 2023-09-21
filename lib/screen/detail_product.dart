import 'package:digikala_ui/widgets/detail_info_product.dart';
import 'package:digikala_ui/widgets/detail_product_bottom_sheet.dart';
import 'package:digikala_ui/widgets/detail_separator.dart';
import 'package:digikala_ui/widgets/product_image_slider.dart';
import 'package:digikala_ui/widgets/special_offers_detail_timer.dart';
import 'package:flutter/material.dart';
import 'package:digikala_ui/data/products.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final product = products.firstWhere((element) => element.id == id);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: double.infinity,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      bottomSheet: DetailProductBottomSheet(
        price: product.price,
        beforePrice: product.beforePrice,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SpecialOffersDetailTimer(),
            ProductImageSlider(
              images: product.imagePaths,
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'موبایل / موبایل',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Colors.lightBlue),
                      ),
                      Text(
                        product.title,
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'پرسش و پاسخ',
                                  style: TextStyle(color: Colors.lightBlue),
                                ),
                                Text(
                                  ' 1',
                                  style: TextStyle(color: Colors.lightBlue),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(
                                Icons.circle,
                                color: Colors.grey[200],
                                size: 8,
                              ),
                            ),
                            const Row(
                              children: [
                                Text(
                                  'دیدگاه کاربران',
                                  style: TextStyle(color: Colors.lightBlue),
                                ),
                                Text(
                                  ' 48',
                                  style: TextStyle(color: Colors.lightBlue),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(
                                Icons.circle,
                                color: Colors.grey[200],
                                size: 8,
                              ),
                            ),
                            const Text('(67) 4.1'),
                            Icon(
                              Icons.star,
                              color: Colors.amber[400],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const DetailSeparator(),
                DetailInfoProduct(info: product.description),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
