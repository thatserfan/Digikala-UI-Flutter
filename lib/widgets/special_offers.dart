import 'package:digikala_ui/widgets/special_offers_card.dart';
import 'package:digikala_ui/widgets/special_offers_first_more.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      child: const SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SpecialOffersCard(),
            SpecialOffersFirstMore(),
          ],
        ),
      ),
    );
  }
}
