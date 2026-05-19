import 'package:flutter/material.dart';

class RiderHistoryScreen extends StatelessWidget {
  const RiderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1120),
        title: const Text('Ride History'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _historyCard(
            'Tripoli Mall',
            'Airport Road',
            '12 LYD',
            'Completed',
            Colors.green,
          ),

          _historyCard(
            'Ben Ashour',
            'وسط المدينة',
            '18 LYD',
            'Cancelled',
            Colors.red,
          ),
        ],
      ),
    );
  }

  Widget _historyCard(
    String from,
    String to,
    String price,
    String status,
    Color statusColor,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            from,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            to,
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                status,
                style: TextStyle(
                  color: statusColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}