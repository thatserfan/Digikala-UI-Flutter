import 'package:digikala_ui/screen/tabs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Digikala',
      theme: ThemeData(fontFamily: 'byekan').copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          secondary: Colors.red,
          onPrimary: Colors.grey,
        ),
      ),
      home: const TabsScreen(),
    ),
  );
}
