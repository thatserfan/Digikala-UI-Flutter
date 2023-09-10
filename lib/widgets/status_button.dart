import 'package:flutter/widgets.dart';

class StatusButton extends StatelessWidget {
  const StatusButton({
    super.key,
    required this.image,
    required this.title,
  });

  final Widget image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(width: 70, child: image),
          Text(title),
        ],
      ),
    );
  }
}
