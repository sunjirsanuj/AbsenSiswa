import 'package:absessiswa/themes/colors.dart';
import 'package:absessiswa/widgets/brand_logo.dart';
import 'package:absessiswa/widgets/brand_name.dart';
import 'package:absessiswa/widgets/button.dart';
import 'package:absessiswa/widgets/custom_icon_text_button.dart';
import 'package:absessiswa/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final fullnameController = TextEditingController();
  final studentidController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

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
              "Sign Up",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),

            CustomTextfield(
              hintText: "Full Name",
              prefixIcon: Icons.person_2_outlined,
              isPassword: false,
              controller: fullnameController,
            ),
            const SizedBox(height: 8),

            CustomTextfield(
              hintText: "Student ID",
              prefixIcon: Icons.badge_outlined,
              isPassword: false,
              controller: studentidController,
            ),
            const SizedBox(height: 8),

            CustomTextfield(
              hintText: "Email",
              prefixIcon: Icons.email_outlined,
              isPassword: false,
              controller: emailController,
            ),
            const SizedBox(height: 8),

            CustomTextfield(
              hintText: "Password",
              prefixIcon: Icons.lock_outline_rounded,
              isPassword: true,
              controller: fullnameController,
            ),
            const SizedBox(height: 25),

            Button(buttonContent: "Sign up", borderRadius: 20),
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
            const SizedBox(height: 30),

            GestureDetector(
              onTap: () {},
              child: CustomIconTextButton(
                buttonContent: "Continue with Google",
                borderColor: Color(0xFFE5ECF2),
                backgroundColor: Colors.white,
                buttonIcon: Image.asset("assets/images/google.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
