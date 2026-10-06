import 'package:absessiswa/themes/colors.dart';
import 'package:absessiswa/widgets/brand_logo.dart';
import 'package:absessiswa/widgets/brand_name.dart';
import 'package:absessiswa/widgets/button.dart';
import 'package:absessiswa/widgets/custom_icon_text_button.dart';
import 'package:absessiswa/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      // BUG: when i scroll up then the elements go under the app bar.
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            BrandLogo(),
            BrandName(fontSize: 25),
            Text(
              "Login to your account",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),

            CustomTextfield(
              hintText: "Email or Username",
              prefixIcon: Icons.person_2_outlined,
              isPassword: false,
            ),
            const SizedBox(height: 8),
            CustomTextfield(
              hintText: "Password",
              prefixIcon: Icons.lock_outline_rounded,
              isPassword: true,
            ),
            const SizedBox(height: 25),

            Button(buttonContent: "Login", borderRadius: 20),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Forget password?",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Colors.grey[400], thickness: 1),
                  ),
                ),
                Text("or", style: TextStyle(fontSize: 16)),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Colors.grey[400], thickness: 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),

            GestureDetector(
              onTap: () {},
              child: CustomIconTextButton(
                buttonContent: "Continue with Google",
                borderColor: Color(0xFFE5ECF2),
                backgroundColor: Colors.white,
                buttonIcon: Image.asset("assets/images/google.png"),
              ),
            ),
            const SizedBox(height: 80),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?", style: TextStyle(fontSize: 16)),
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
                    "Register",
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
    );
  }
}
