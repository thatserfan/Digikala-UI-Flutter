import 'package:digikala_ui/data/products.dart';
import 'package:digikala_ui/widgets/special_offers_card.dart';
import 'package:digikala_ui/widgets/special_offers_first_more.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        color: Colors.red,
        width: double.infinity,
        child: SingleChildScrollView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (var offer in products)
                if (offer.hasOffer)
                  SpecialOffersCard(
                      id: offer.id,
                      title: offer.title,
                      price: offer.price,
                      beforePrice: offer.beforePrice,
                      imagePath: offer.imagePaths[0]),
              const SpecialOffersFirstMore(),
            ],
          ),
        ),
      ),
    );
  }
}
