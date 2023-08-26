import 'package:digikala_ui/widgets/description_button.dart';
import 'package:flutter/material.dart';

class ButtonsBar extends StatelessWidget {
  const ButtonsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DescriptionButton(
              image: Image.asset('assets/image/des-buttons/digistyle.png'),
              text: const Text('دیجی استایل'),
            ),
            DescriptionButton(
              image: Image.asset('assets/image/des-buttons/digiplus.png'),
              text: const Text('دیجی پلاس'),
            ),
            DescriptionButton(
              image: Image.asset('assets/image/des-buttons/digipay.png'),
              text: const Text('دیجی پی'),
            ),
            DescriptionButton(
              image: Image.asset('assets/image/des-buttons/digijet.png'),
              text: const Text('دیجی جت'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DescriptionButton(
              image: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.more_horiz, color: Colors.grey[500]),
              ),
              text: const Text('بیشتر'),
            ),
            DescriptionButton(
              image: Image.asset('assets/image/des-buttons/digiclub.png'),
              text: const Text('دیجی کلاب'),
            ),
            DescriptionButton(
              image: Image.asset('assets/image/des-buttons/business.png'),
              text: const Text('دیجی بیزنس'),
            ),
            DescriptionButton(
              image: Image.asset('assets/image/des-buttons/backpack.png'),
              text: const Text('تخفیف ویژه'),
            ),
          ],
        ),
      ],
    );
  }
}
