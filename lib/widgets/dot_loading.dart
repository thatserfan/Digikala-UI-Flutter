import 'dart:async';
import 'package:flutter/material.dart';

class DotLoading extends StatefulWidget {
  const DotLoading({super.key});

  @override
  State<DotLoading> createState() {
    return _DotLoadingState();
  }
}

class _DotLoadingState extends State<DotLoading> {
  final int _dotCount = 3;
  Timer? _timer;
  int _currentDot = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    const duration = Duration(milliseconds: 300);
    _timer = Timer.periodic(duration, (Timer timer) {
      setState(() {
        _currentDot = (_currentDot + 1) % (_dotCount + 1);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_dotCount, (index) {
        // Determine the opacity of the dot
        final opacity = _currentDot == index ? 1.0 : 0.3;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.all(3),
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: Colors.grey[800]!.withOpacity(opacity),
            borderRadius: BorderRadius.circular(6),
          ),
        );
      }),
    );
  }
}
