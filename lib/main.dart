import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morobo/Features/splash_feature/presentation/views/splash_view.dart';

void main() {
  runApp(const Morobo());
  
}

class Morobo extends StatelessWidget {
  const Morobo({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home:const SplashView());
  }
}
