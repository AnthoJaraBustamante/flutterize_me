import 'package:flutter/material.dart';
import 'package:flutterize_me/app/home/home_page.dart';

import 'app/constants/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EdiPro',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.getColor(ColorName.primary)),
        useMaterial3: true,
        textTheme: const TextTheme(
        ),
      ),
      home: const HomePage(),
    );
  }
}
