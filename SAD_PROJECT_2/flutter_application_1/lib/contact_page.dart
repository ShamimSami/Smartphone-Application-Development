import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  static const Color surface = Color(0xFF111827);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 20),
      children: const [
        _ContactCard(
          title: "Email",
          value: "generalesports@example.com",
          icon: Icons.email_rounded,
        ),
        SizedBox(height: 12),
        _ContactCard(
          title: "Phone",
          value: "+880 1XXXXXXXXX",
          icon: Icons.phone_rounded,
        ),
        SizedBox(height: 12),
        _ContactCard(
          title: "Location",
          value: "Bangladesh",
          icon: Icons.location_on_rounded,
        ),
      ],
    );
  }
}

class _ContactCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const _ContactCard({
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF111827),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white24),
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
            child: Icon(icon, color: const Color(0xFF16F2D0)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 4),
                Text(value, style: const TextStyle(color: Color(0xFFB7C0D6))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
