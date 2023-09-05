import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Text(
            //   'دیجی کالا',
            //   style: TextStyle(color: Colors.red),
            // ),
            Image.asset('assets/image/type-logo.png', height: 20),
            const Text(
              ' جستجو در',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
            ),
            const Icon(Icons.search),
          ],
        ),
      ),
    );
  }
}
