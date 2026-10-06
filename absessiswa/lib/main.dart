import 'package:absessiswa/pages/intro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AbsesSiswa());
}

class AbsesSiswa extends StatelessWidget {
  const AbsesSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: IntroPage());
  }
}
