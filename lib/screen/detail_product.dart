import 'package:digikala_ui/widgets/detail_product_bottom_sheet.dart';
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
      body: const SingleChildScrollView(
        child: Column(
          children: [SpecialOffersDetailTimer()],
        ),
      ),
    );
  }
}
