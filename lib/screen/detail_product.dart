import 'package:digikala_ui/widgets/detail_product_bottom_sheet.dart';
import 'package:digikala_ui/widgets/product_image_slider.dart';
import 'package:digikala_ui/widgets/special_offers_detail_timer.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
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
      bottomSheet: const DetailProductBottomSheet(
        price: 12600000,
        beforePrice: 86000000,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SpecialOffersDetailTimer(),
            const ProductImageSlider(
              images: [
                'assets/image/products/iphone13/1.png',
                'assets/image/products/iphone13/2.jpg',
                'assets/image/products/iphone13/3.jpg',
                'assets/image/products/iphone13/4.jpg',
                'assets/image/products/iphone13/5.jpg',
                'assets/image/products/iphone13/6.jpg',
                'assets/image/products/iphone13/7.jpg',
                'assets/image/products/iphone13/8.jpg',
              ],
            ),
            const SizedBox(height: 10),
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
                    textDirection: TextDirection.rtl,
                    'گوشی موبایل اپل مدل iPhone 13 CH دو سیم‌ کارت ظرفیت 128 گیگابایت و رم 4 گیگابایت',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(
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
                        padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        padding: const EdgeInsets.symmetric(horizontal: 10),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
