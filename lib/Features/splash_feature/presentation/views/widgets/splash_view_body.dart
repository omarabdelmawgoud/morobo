import 'package:flutter/material.dart';
import 'package:morobo/Core/utils/assets_class.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset(0, 0),
    ).animate(animationController);

    slidingAnimation.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(image: AssetImage(AssetsClass.logo), height: 50),
          SizedBox(height: 4),
          AnimatedBuilder(
            animation: slidingAnimation,
            builder: (BuildContext context, _) {
              return SlideTransition(
                position: slidingAnimation,
                child: Text(
                  "Read free books",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
