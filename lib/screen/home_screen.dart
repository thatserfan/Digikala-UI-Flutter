import 'package:digikala_ui/widgets/image_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: ImageSlider(),
        ),
      ],
    );
  }
}
