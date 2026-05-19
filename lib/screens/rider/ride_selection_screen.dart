import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class RideSelectionScreen extends StatelessWidget {
  const RideSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1120),
        title: const Text('Select Ride'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _rideCard('Economy', '12 LYD', Icons.local_taxi, Colors.blue),
            _rideCard('Family', '18 LYD', Icons.people, Colors.green),
            _rideCard('Delivery', '10 LYD', Icons.delivery_dining, Colors.orange),
            _rideCard('VIP', '28 LYD', Icons.star, Colors.cyan),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(AppRoutes.searchingDriver),
                child: const Text('Confirm Ride'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _rideCard(String title, String price, IconData icon, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: color.withOpacity(0.7)),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 34),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Text(
            price,
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}