import 'package:flutter/material.dart';
import 'package:workspace/helper/navigate_bar.dart';
import 'package:workspace/screens/about_screen.dart';
import 'package:workspace/screens/profile_screen.dart';
import 'package:workspace/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
        actions: [
          GestureDetector(
            onTap: () {
              goTo(context, const SettingScreen());
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.settings),
            ),
          )
        ],
      ),
      drawer: const Drawer(),
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
                goTo(context, const ProfileScreen());
              },
              child: const Text("Go to Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
