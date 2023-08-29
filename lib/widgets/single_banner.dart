import 'package:flutter/material.dart';

class SingleBanner extends StatelessWidget {
  const SingleBanner({super.key, this.image, this.child, this.background});

  final ImageProvider? image;
  final Widget? child;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: width / 1.2,
        height: (width / 1.2) / 2.5,
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
