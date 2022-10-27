import 'package:flutter/material.dart';
import 'package:workspace/helper/navigate_bar.dart';
import 'package:workspace/screens/about_screen.dart';
import 'package:workspace/screens/home_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Settings")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                goTo(context, const AboutScreen());
              },
              child: const Text("Go to About"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                }), (route) => false);
              },
              child: const Text("Go to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
