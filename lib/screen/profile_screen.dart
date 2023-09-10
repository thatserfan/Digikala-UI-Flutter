import 'package:digikala_ui/widgets/profile_button.dart';
import 'package:digikala_ui/widgets/status_button.dart';
import 'package:flutter/material.dart';

import '../widgets/single_banner.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Text(
              'عرفان فرح بخش',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 5),
          Center(
            child: Text(
              '09357300327',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/image/profile-wallet.png',
                      height: 40,
                    ),
                    const SizedBox(height: 2),
                    const Text('فعال سازی کیف پول'),
                  ],
                ),
                Container(
                  width: 1,
                  height: 40,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text('امتیاز'),
                            SizedBox(width: 2),
                            Text('36'),
                          ],
                        ),
                        Text('ماموریت های دیجی کلاب')
                      ],
                    ),
                    Image.asset(
                      'assets/image/club-point.png',
                      height: 50,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              height: 10,
              color: Colors.grey[300],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Row(
              children: [
                StatusButton(
                  image: Image.asset(
                    'assets/image/profile-icons/status-returned.png',
                  ),
                  title: 'مرجوع شده',
                ),
                StatusButton(
                    image: Image.asset(
                      'assets/image/profile-icons/status-delivered.png',
                    ),
                    title: 'تحویل شده'),
                StatusButton(
                  image: Image.asset(
                    'assets/image/profile-icons/status-processing.png',
                  ),
                  title: 'در حال پردازش',
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SingleBanner(
              image: AssetImage('assets/image/single-banner/light.jpg'),
            ),
          ),
          ProfileButton(
            icon: const Icon(Icons.favorite_border),
            title: 'لیست ها',
            onTap: () {},
          ),
          ProfileButton(
            icon: const Icon(Icons.mode_comment_outlined),
            title: 'نقد و نظرات',
            onTap: () {},
          ),
          ProfileButton(
            icon: const Icon(Icons.signpost_outlined),
            title: 'آدرس ها',
            onTap: () {},
          ),
          ProfileButton(
            icon: const Icon(Icons.credit_card),
            title: 'کارت های هدیه',
            onTap: () {},
          ),
          ProfileButton(
            icon: const Icon(Icons.person_outline),
            title: 'اطلاعات حساب کاربری',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
