import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final Widget icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.keyboard_arrow_left, color: Colors.grey),
                  ),
                  const Expanded(child: SizedBox()),
                  Text(title),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: icon,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 40,
                left: 20,
              ),
              height: 1,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
