import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("General Esports"),
        centerTitle: true,
        actions: [Icon(Icons.home), Icon(Icons.search)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headline
            const Text(
              "General Esports Package System",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            // Banner (like your photo)
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 31, 153, 160),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "Official Tournament\nPackage System",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Section title
            const Text(
              "Supported Games",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            // Icons row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                GameIcon(icon: Icons.sports_esports, label: "PUBG"),
                GameIcon(icon: Icons.flash_on, label: "Valorant"),
                GameIcon(icon: Icons.shield, label: "MLBB"),
                GameIcon(icon: Icons.gamepad, label: "More"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GameIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const GameIcon({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: const Color.fromARGB(171, 142, 53, 9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(
            icon,
            color: const Color.fromARGB(255, 20, 203, 197),
            size: 30,
          ),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
      ],
    );
  }
}
