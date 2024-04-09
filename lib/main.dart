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
        fontFamily: 'Satoshi Variable',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 16.0),
          bodyMedium: TextStyle(fontSize: 14.0),
          // Puedes agregar más estilos aquí según tus necesidades
        ),
        // Definir el peso de fuente global
      ),
      home: const HomePage(),
    );
  }
}
