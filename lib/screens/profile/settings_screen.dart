import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1120),
        title: const Text('Settings'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          SwitchListTile(
            value: true,
            onChanged: (_) {},
            activeThumbColor: Colors.blue,
            title: const Text('Dark Mode', style: TextStyle(color: Colors.white)),
          ),
          SwitchListTile(
            value: true,
            onChanged: (_) {},
            activeThumbColor: Colors.cyan,
            title: const Text('Notifications', style: TextStyle(color: Colors.white)),
          ),
          const ListTile(
            leading: Icon(Icons.language, color: Colors.blue),
            title: Text('Language', style: TextStyle(color: Colors.white)),
            subtitle: Text('Arabic / English', style: TextStyle(color: Colors.white54)),
          ),
          const ListTile(
            leading: Icon(Icons.swap_horiz, color: Colors.cyan),
            title: Text('Switch Rider / Driver', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}