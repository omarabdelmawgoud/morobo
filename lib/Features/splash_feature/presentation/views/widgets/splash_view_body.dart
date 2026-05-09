import 'package:flutter/material.dart';
import 'package:morobo/Core/utils/assets_class.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(image: AssetImage(AssetsClass.logo), height: 50),
          SizedBox(height: 4),
          Text(
            "Read free boks",
            textAlign: TextAlign.center,
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
