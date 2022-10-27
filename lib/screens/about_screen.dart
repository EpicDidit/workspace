import 'package:flutter/material.dart';
import 'package:workspace/helper/navigate_bar.dart';
import 'package:workspace/screens/profile_screen.dart';
import 'package:workspace/screens/settings_screen.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("About")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                goTo(context, const ProfileScreen());
              },
              child: const Text("Go to Profile"),
            ),
            ElevatedButton(
              onPressed: () {
                goTo(context, const SettingScreen());
              },
              child: const Text("Go to Setting"),
            ),
          ],
        ),
      ),
    );
  }
}
