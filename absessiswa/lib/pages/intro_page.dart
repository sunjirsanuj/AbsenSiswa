import 'package:absessiswa/pages/login_page.dart';
import 'package:absessiswa/pages/signup_page.dart';
import 'package:absessiswa/themes/colors.dart';
import 'package:absessiswa/widgets/brand_logo.dart';
import 'package:absessiswa/widgets/brand_name.dart';
import 'package:absessiswa/widgets/button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BrandLogo(),

              BrandName(fontSize: 30),
              const SizedBox(height: 5),

              Text(
                "Attendance Made Simple",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              Image.asset("assets/images/intro_bg.jpg"),

              const SizedBox(height: 60),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupPage()),
                  );
                },
                child: Button(buttonContent: "Get Started", borderRadius: 30),
              ),

              //const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
