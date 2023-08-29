import 'package:flutter/material.dart';

class MiniBanner extends StatelessWidget {
  const MiniBanner({super.key, this.image, this.child, this.background});

  final ImageProvider? image;
  final Widget? child;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: width / 2.5,
        height: (width / 2.5) / 1.3,
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
