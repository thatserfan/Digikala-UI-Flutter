import 'package:digikala_ui/widgets/category_item.dart';
import 'package:digikala_ui/widgets/category_row.dart';
import 'package:flutter/widgets.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CategoryRow(
            categoryName: 'موبایل',
            categoryItems: [
              CategoryItem(
                categoryItemName: 'گوشی موبایل',
                categoryItemImage: Image.asset(
                  'assets/image/products/phone.jpg',
                ),
                categoryItemQuantity: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
