import 'package:absessiswa/themes/colors.dart';
import 'package:absessiswa/widgets/profile_pic.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,

        leadingWidth: 70,
        leading: Builder(
          builder: (context) {
            return ProfilePic();
          },
        ),

        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good morning,",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              const SizedBox(height: 1),
              Text(
                "Sunjir Islam",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 8),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_rounded,size: 30,)),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 157, 170, 82),
              ),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              currentAccountPicture: Icon(Icons.person_2),
            ),

            ListTile(
              trailing: Icon(Icons.home),
              hoverColor: const Color.fromARGB(255, 157, 170, 82),
              title: Text("Homepage"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
