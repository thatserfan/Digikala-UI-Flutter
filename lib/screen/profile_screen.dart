import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: Image.asset('assets/image/logo.png', width: 150),
              ),
              const Text(
                'برای ورود و یا ثبت نام در دیجی کالا شماره موبایل یا پست الکترونیکی خود را وارد نمایید',
                textAlign: TextAlign.end,
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'شماره موبایل یا پست الکترونیکی',
                      border: InputBorder.none,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Material(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.secondary,
                child: InkWell(
                  onTap: () {},
                  child: const SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Center(
                      child: Text(
                        'ورود به دیجی کالا',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                  'ورود شما به معنای پذیرش شرایط دیجی‌کالا وقوانین حریم‌خصوصی است',
                  style: Theme.of(context).textTheme.labelMedium),
            ],
          ),
        ),
      ),
    );
  }
}
