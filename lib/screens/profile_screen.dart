import 'package:flutter/material.dart';
// import 'package:workspace/helper/navigate_bar.dart';
// import 'package:workspace/screens/home_screen.dart';
// import 'package:workspace/screens/settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/blackgirl.jpg",
              )
            ],
          ),
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       ElevatedButton(
      //         onPressed: () {
      //           goTo(context, const SettingScreen());
      //         },
      //         child: const Text("Go to Setting"),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           goTo(context, const HomeScreen());
      //         },
      //         child: const Text("Go to Home"),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
