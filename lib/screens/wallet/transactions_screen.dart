import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1120),
        title: const Text('Transactions'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          ListTile(
            leading: Icon(Icons.arrow_upward, color: Colors.red),
            title: Text('Ride Payment', style: TextStyle(color: Colors.white)),
            subtitle: Text('Today', style: TextStyle(color: Colors.white54)),
            trailing: Text('-12 LYD', style: TextStyle(color: Colors.red)),
          ),
          ListTile(
            leading: Icon(Icons.arrow_downward, color: Colors.green),
            title: Text('Wallet Top-up', style: TextStyle(color: Colors.white)),
            subtitle: Text('Yesterday', style: TextStyle(color: Colors.white54)),
            trailing: Text('+100 LYD', style: TextStyle(color: Colors.green)),
          ),
        ],
      ),
    );
  }
}