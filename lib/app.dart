import 'package:ecommerce/presentation/screens/splash_screen.dart';
import 'package:ecommerce/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: AppColor.primaryColor,
          progressIndicatorTheme:
              ProgressIndicatorThemeData(color: AppColor.primaryColor)),
      home: const SplashScreen(),
    );
  }
}
