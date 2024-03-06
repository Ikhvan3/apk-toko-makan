import 'package:flutter/material.dart';
import 'package:projek_akhir_dicoding/login_screen/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daftar Makanan',
      theme: ThemeData(),
      home: const LoginScreen(),
    );
  }
}
