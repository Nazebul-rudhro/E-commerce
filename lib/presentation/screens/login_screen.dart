import 'package:ecommerce/presentation/utility/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AssetsPath.login_logo,
                height: 120,
              ),
              SizedBox(height: 10),
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 28,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 5),
              Text(
                "Please Enter Your Email Address",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
