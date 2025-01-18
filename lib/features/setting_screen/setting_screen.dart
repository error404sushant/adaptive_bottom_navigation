import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final Map<String, String> settingsData = {
    'Account': 'Manage your account',
    'Notifications': 'Set up notifications',
    'Privacy': 'Privacy preferences',
  };

   SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: settingsData.entries.map((entry) {
          return ListTile(
            title: Text(entry.key),
            subtitle: Text(entry.value),
            leading: Icon(Icons.settings),
          );
        }).toList(),
      ),
    );
  }
}
