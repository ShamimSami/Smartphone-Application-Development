import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color surface = Color(0xFF111827);
  static const Color accent = Color(0xFF16F2D0);
  static const Color muted = Color(0xFF8A93A6);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // HERO
          _Hero(),
          const SizedBox(height: 18),

          // SERVICES
          const Text(
            "Services",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 10),
          _ServiceCard(
            icon: Icons.emoji_events_rounded,
            title: "Esports Tournaments",
            subtitle: "Tournament planning, rules, bracket & match management.",
          ),
          const SizedBox(height: 10),
          _ServiceCard(
            icon: Icons.live_tv_rounded,
            title: "Broadcast & Production",
            subtitle: "Streaming setup, overlays, live production support.",
          ),
          const SizedBox(height: 10),
          _ServiceCard(
            icon: Icons.brush_rounded,
            title: "Visuals & Graphics",
            subtitle: "Posters, thumbnails, motion graphics for events.",
          ),
          const SizedBox(height: 10),
          _ServiceCard(
            icon: Icons.handshake_rounded,
            title: "Brand Collaboration",
            subtitle: "Sponsors, publishers, and community growth support.",
          ),

          const SizedBox(height: 18),

          // QUICK STATS
          const Text(
            "Quick Stats",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Expanded(
                child: _Stat(value: "100+", label: "Events"),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _Stat(value: "1200+", label: "Hours"),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _Stat(value: "5M+", label: "Audience"),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // GALLERY
          const Text(
            "Gallery",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 10),

          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            children: const [
              _GalleryImage("assets/pic1.jpg"),
              _GalleryImage("assets/pic2.jpg"),
              _GalleryImage("assets/pic3.jpg"),
              _GalleryImage("assets/pic4.jpg"),
              _GalleryImage("assets/pic5.jpg"),
              _GalleryImage("assets/pic6.jpg"),
            ],
          ),
        ],
      ),
    );
  }
}

class _Hero extends StatelessWidget {
  static const Color surface = Color(0xFF111827);
  static const Color accent = Color(0xFF16F2D0);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white.withOpacity(.06)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "GENERAL ESPORTS",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 6),
          Text(
            "Change begins here.",
            style: TextStyle(color: accent, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 10),
          Text(
            "General Esports is a Bangladesh-based gaming media production company, established in 2020. We specialize in delivering high-quality remote and on-site broadcast productions, along with tailored media and creative solutions for esports events and organizations. Our team organizes competitive esports tournaments and provides reliable broadcast, production, and visual support to elevate every gaming experience.",
            style: TextStyle(fontSize: 12.5, color: Color(0xFFB7C0D6)),
          ),
        ],
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _ServiceCard({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  static const Color surface = Color(0xFF111827);
  static const Color accent = Color(0xFF16F2D0);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white.withOpacity(.06)),
      ),
      child: Row(
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.06),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: accent),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFFB7C0D6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final String value;
  final String label;

  const _Stat({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFF111827),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white.withOpacity(.06)),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900,
              color: Color(0xFF16F2D0),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 11, color: Color(0xFF8A93A6)),
          ),
        ],
      ),
    );
  }
}

class _GalleryImage extends StatelessWidget {
  final String path;
  const _GalleryImage(this.path);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Image.asset(path, fit: BoxFit.contain),
      ),
    );
  }
}
