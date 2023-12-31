import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryItemName,
    required this.categoryItemImage,
    required this.categoryItemQuantity,
  });

  final Widget categoryItemImage;
  final String categoryItemName;
  final int categoryItemQuantity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        color: const Color.fromARGB(255, 242, 242, 242),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              SizedBox(
                width: 85,
                child: categoryItemImage,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(categoryItemName,
                    style: Theme.of(context).textTheme.bodySmall),
              ),
              Row(
                children: [
                  Text('کالا ', style: Theme.of(context).textTheme.bodySmall),
                  Text('$categoryItemQuantity+',
                      style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
