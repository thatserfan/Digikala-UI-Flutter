import 'package:digikala_ui/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    super.key,
    required this.categoryName,
    required this.categoryItems,
  });

  final String categoryName;
  final List<CategoryItem> categoryItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('مشاهده همه'),
              ),
              Text(categoryName),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categoryItems,
            ),
          ),
        ),
      ],
    );
  }
}
