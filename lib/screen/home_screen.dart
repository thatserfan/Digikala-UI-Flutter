import 'package:digikala_ui/widgets/buttons_bar.dart';
import 'package:digikala_ui/widgets/image_slider.dart';
import 'package:digikala_ui/widgets/special_offers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: ImageSlider(),
        ),
        ButtonsBar(),
        SpecialOffers(),
      ]),
    );
  }
}
