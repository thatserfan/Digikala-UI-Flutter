import 'package:flutter/material.dart';

class DetailInfoProduct extends StatelessWidget {
  const DetailInfoProduct({super.key, required this.info});

  final String info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text('نقد و بررسی',
                style: Theme.of(context).textTheme.titleLarge),
          ),
          Text(
            info,
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
