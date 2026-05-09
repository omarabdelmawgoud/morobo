import 'package:flutter/material.dart';
import 'package:morobo/Core/utils/assets_class.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage(AssetsClass.logo),
              height: 50,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
