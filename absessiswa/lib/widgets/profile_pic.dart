import 'package:absessiswa/themes/colors.dart';
import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.lightBlue,
                  foregroundColor: Colors.black,
                  child: Icon(Icons.person, ),
                ),
              ),
            );
  }
}