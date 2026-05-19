import 'package:flutter/material.dart';

class SearchDestinationScreen extends StatelessWidget {
  const SearchDestinationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1120),
        title: const Text('Search Destination'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'إلى أين تذهب؟',
                hintStyle: const TextStyle(color: Colors.white54),
                prefixIcon: const Icon(Icons.search, color: Colors.blue),
                filled: true,
                fillColor: Colors.white.withOpacity(0.08),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const ListTile(
              leading: Icon(Icons.home, color: Colors.blue),
              title: Text('المنزل', style: TextStyle(color: Colors.white)),
              subtitle: Text('طرابلس، ليبيا', style: TextStyle(color: Colors.white54)),
            ),
            const ListTile(
              leading: Icon(Icons.work, color: Colors.cyan),
              title: Text('العمل', style: TextStyle(color: Colors.white)),
              subtitle: Text('وسط المدينة', style: TextStyle(color: Colors.white54)),
            ),
          ],
        ),
      ),
    );
  }
}