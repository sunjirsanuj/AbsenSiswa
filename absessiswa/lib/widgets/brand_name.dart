import 'package:absessiswa/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandName extends StatelessWidget {
  final double fontSize;
  const BrandName({super.key, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Absen",
            style: GoogleFonts.poppins(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Siswa",
            style: GoogleFonts.poppins(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
