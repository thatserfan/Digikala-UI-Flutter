import 'package:digikala_ui/models/subcategory.dart';

List<SubCategory> subCategories = const [
  SubCategory(
    id: 'phone-covers',
    title: 'کیف و کاور گوشی',
    mainCategory: 'phones',
    imagePath: 'assets/image/products/cover.png',
    amount: 100,
  ),
  SubCategory(
    id: 'phone',
    title: 'موبایل',
    mainCategory: 'phones',
    imagePath: 'assets/image/products/phone.png',
    amount: 10,
  ),

    SubCategory(
    id: 'airpod',
    title: 'ایرپاد',
    mainCategory: 'digital-products',
    imagePath: 'assets/image/products/airpod.png',
    amount: 1000,
  ),
    SubCategory(
    id: 'smart-watch',
    title: 'ساعت هوشمند',
    mainCategory: 'digital-products',
    imagePath: 'assets/image/products/smart-watch.png',
    amount: 1000,
  ),
    SubCategory(
    id: 'laptop',
    title: 'لپ تاپ',
    mainCategory: 'digital-products',
    imagePath: 'assets/image/products/laptop.png',
    amount: 1000,
  ),
];
