import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Settings"),
    );
  }
}
