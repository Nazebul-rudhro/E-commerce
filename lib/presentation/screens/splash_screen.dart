import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utility/app_colors.dart';
import '../utility/assets_path.dart';
import 'main_bottom_navbar_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MainBottomNavBarScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Center content vertically
          children: [
            Spacer(),
            SvgPicture.asset(
              AssetsPath.appLogoSvg,
              width: 100,
            ),
            Spacer(),
            CircularProgressIndicator(
                // color: AppColor.primaryColor,
                ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Version 1.0.0",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
