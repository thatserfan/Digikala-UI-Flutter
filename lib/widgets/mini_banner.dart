import 'package:flutter/material.dart';

class MiniBanner extends StatelessWidget {
  const MiniBanner({super.key, this.image, this.child, this.background});

  final ImageProvider? image;
  final Widget? child;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 160,
        height: 120,
        decoration: image != null
            ? BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: image!,
                ),
                borderRadius: BorderRadius.circular(20),
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: background,
              ),
        child: child,
      ),
    );
  }
}
