import 'package:flutter/material.dart';

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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/image/profile-icons/status-returned.png',
                        width: 80,
                      ),
                      const Text('در حال پردازش'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/image/profile-icons/status-delivered.png',
                        width: 80,
                      ),
                      const Text('در حال پردازش'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/image/profile-icons/status-processing.png',
                        width: 80,
                      ),
                      const Text('در حال پردازش'),
                    ],
                  ),
                ),
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
        ],
      ),
    );
  }
}
