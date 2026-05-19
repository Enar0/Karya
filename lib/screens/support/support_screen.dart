import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1120),
        title: const Text('Support'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          ListTile(
            leading: Icon(Icons.chat, color: Colors.blue),
            title: Text('Live Chat', style: TextStyle(color: Colors.white)),
            subtitle: Text('Talk with support team', style: TextStyle(color: Colors.white54)),
          ),
          ListTile(
            leading: Icon(Icons.warning, color: Colors.red),
            title: Text('Emergency Help', style: TextStyle(color: Colors.white)),
            subtitle: Text('Get urgent assistance', style: TextStyle(color: Colors.white54)),
          ),
          ListTile(
            leading: Icon(Icons.report_problem, color: Colors.orange),
            title: Text('Report an Issue', style: TextStyle(color: Colors.white)),
            subtitle: Text('Tell us what happened', style: TextStyle(color: Colors.white54)),
          ),
        ],
      ),
    );
  }
}