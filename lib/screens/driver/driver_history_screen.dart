import 'package:flutter/material.dart';

class DriverHistoryScreen extends StatelessWidget {
  const DriverHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1120),
        title: const Text('Driver History'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _tripCard('Ahmed Salem', 'Tripoli Mall', '22 LYD'),
          _tripCard('Mohamed Ali', 'Airport Road', '18 LYD'),
        ],
      ),
    );
  }

  Widget _tripCard(String rider, String destination, String earning) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white24,
            child: Icon(Icons.person, color: Colors.white),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rider,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 6),
                Text(
                  destination,
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          Text(
            earning,
            style: const TextStyle(
              color: Colors.cyan,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}