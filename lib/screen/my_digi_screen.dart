import 'package:digikala_ui/screen/login_screen.dart';
import 'package:digikala_ui/screen/profile_screen.dart';
import 'package:flutter/material.dart';

class MyDigiScreen extends StatefulWidget {
  const MyDigiScreen({super.key});

  @override
  State<MyDigiScreen> createState() => _MyDigiScreenScreenState();
}

bool isLogin = false;

class _MyDigiScreenScreenState extends State<MyDigiScreen> {
  @override
  Widget build(BuildContext context) {
    return isLogin
        ? const ProfileScreen()
        : LoginScreen(
            onTap: () {
              setState(() {
                isLogin = true;
              });
            },
          );
  }
}
