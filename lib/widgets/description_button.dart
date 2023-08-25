import 'package:flutter/material.dart';

class DescriptionButton extends StatelessWidget {
  const DescriptionButton({
    super.key,
    required this.image,
    required this.text,
  });

  final Widget image;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: 70,
        height: 100,
        child: Column(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: image,
            ),
            const SizedBox(
              height: 10,
            ),
            text,
          ],
        ),
      ),
    );
  }
}
