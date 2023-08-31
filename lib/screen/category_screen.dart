import 'package:digikala_ui/data/categories.dart';
import 'package:digikala_ui/data/subcategories.dart';
import 'package:digikala_ui/widgets/category_item.dart';
import 'package:digikala_ui/widgets/category_row.dart';
import 'package:flutter/widgets.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) => CategoryRow(
        categoryName: categories[index].title,
        categoryItems: [
          for (var subCat in subCategories)
            if (subCat.mainCategory == categories[index].id)
              CategoryItem(
                categoryItemName: subCat.title,
                categoryItemImage: Image.asset(
                  subCat.imagePath,
                ),
                categoryItemQuantity: subCat.amount,
              ),
        ],
      ),
    );
  }
}
