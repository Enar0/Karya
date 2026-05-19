import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1120),
        title: const Text('Wallet'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(28),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF1E88E5),
                    Color(0xFF00BCD4),
                  ],
                ),
                borderRadius: BorderRadius.circular(28),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Available Balance',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),

                  SizedBox(height: 16),

                  Text(
                    '1,250 LYD',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    title: Text(
                      'Ride Payment',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Text(
                      '-12 LYD',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),

                  ListTile(
                    title: Text(
                      'Wallet Top-up',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Text(
                      '+100 LYD',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}