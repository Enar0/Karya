import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1120),
        title: const Text('Notifications'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.local_taxi, color: Colors.white),
            ),
            title: Text(
              'Your ride has been confirmed',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Driver is arriving in 4 minutes',
              style: TextStyle(color: Colors.white54),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.wallet, color: Colors.white),
            ),
            title: Text(
              'Wallet updated',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              '100 LYD added successfully',
              style: TextStyle(color: Colors.white54),
            ),
          ),
        ],
      ),
    );
  }
}