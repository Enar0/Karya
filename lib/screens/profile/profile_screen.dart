import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1120),
        title: const Text('Profile'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const CircleAvatar(
            radius: 45,
            backgroundColor: Colors.blue,
            child: Icon(Icons.person, color: Colors.white, size: 45),
          ),

          const SizedBox(height: 16),

          const Center(
            child: Text(
              'Karya User',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 30),

          _item(Icons.wallet, 'Wallet', () => Get.toNamed(AppRoutes.wallet)),
          _item(Icons.history, 'Ride History', () => Get.toNamed(AppRoutes.riderHistory)),
          _item(Icons.settings, 'Settings', () => Get.toNamed(AppRoutes.settings)),
          _item(Icons.support_agent, 'Support', () => Get.toNamed(AppRoutes.support)),
        ],
      ),
    );
  }

  Widget _item(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color: Colors.blue),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white38, size: 16),
    );
  }
}