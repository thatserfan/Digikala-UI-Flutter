import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //todo App bar must be removed and move to tabs file
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
