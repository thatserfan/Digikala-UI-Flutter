import 'package:flutter/material.dart';

class SpecialOffersCard extends StatelessWidget {
  const SpecialOffersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 280,
        width: 150,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Text('شگفت انگیز اختصاصی اپ',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold)),
          ),
        ]),
      ),
    );
  }
}
