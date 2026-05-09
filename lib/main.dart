import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morobo/Core/consts.dart';
import 'package:morobo/Features/splash_feature/presentation/views/splash_view.dart';

void main() {
  runApp(const Morobo());
}

class Morobo extends StatelessWidget {
  const Morobo({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimColor),
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
