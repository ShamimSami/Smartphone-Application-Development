import 'package:flutter/material.dart';

class PackageSystemPage extends StatefulWidget {
  const PackageSystemPage({super.key});

  @override
  State<PackageSystemPage> createState() => _PackageSystemPageState();
}

enum GameType { pubg, valorant, mlbb }

enum PackageTier { gold, platinum }

class GamePackage {
  final String name;
  final int price;
  final List<String> features;

  GamePackage({
    required this.name,
    required this.price,
    required List<String> extraFeatures,
  }) : features = [
         "Preview/Trailer",
         "Event Structure (Format, Prize Pool, Points)",
         ...extraFeatures,
       ];
}

class _PackageSystemPageState extends State<PackageSystemPage> {
  static const Color surface = Color(0xFF111827);
  static const Color accent = Color(0xFF16F2D0);

  GameType _game = GameType.pubg;
  PackageTier _tier = PackageTier.gold;

  final _matchesCtrl = TextEditingController(text: "1");

  late final Map<GameType, Map<PackageTier, GamePackage>> _packages;

  @override
  void initState() {
    super.initState();

    const goldExtras = [
      "Participant: Teams Only",
      "Game Feed / Map Feed",
      "Highlights",
    ];

    const platinumExtras = [
      "Participant: Teams + Rosters",
      "Multi POV",
      "Real-Time Stats & Ranking",
      "Custom Player Stats & Photos",
      "Replay + Moments Highlights",
    ];

    _packages = {
      GameType.pubg: {
        PackageTier.gold: GamePackage(
          name: "PUBG Mobile Gold",
          price: 899,
          extraFeatures: goldExtras,
        ),
        PackageTier.platinum: GamePackage(
          name: "PUBG Mobile Platinum",
          price: 1399,
          extraFeatures: platinumExtras,
        ),
      },
      GameType.valorant: {
        PackageTier.gold: GamePackage(
          name: "Valorant Gold",
          price: 799,
          extraFeatures: goldExtras,
        ),
        PackageTier.platinum: GamePackage(
          name: "Valorant Platinum",
          price: 1299,
          extraFeatures: platinumExtras,
        ),
      },
      GameType.mlbb: {
        PackageTier.gold: GamePackage(
          name: "Mobile Legends Gold",
          price: 699,
          extraFeatures: goldExtras,
        ),
        PackageTier.platinum: GamePackage(
          name: "Mobile Legends Platinum",
          price: 1199,
          extraFeatures: platinumExtras,
        ),
      },
    };
  }

  @override
  void dispose() {
    _matchesCtrl.dispose();
    super.dispose();
  }

  GamePackage get pkg => _packages[_game]![_tier]!;
  int get matches => int.tryParse(_matchesCtrl.text.trim()) ?? 0;
  int get total => (matches > 0) ? matches * pkg.price : 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Select Game",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  children: [
                    _Chip(
                      "PUBG",
                      _game == GameType.pubg,
                      () => setState(() => _game = GameType.pubg),
                    ),
                    _Chip(
                      "Valorant",
                      _game == GameType.valorant,
                      () => setState(() => _game = GameType.valorant),
                    ),
                    _Chip(
                      "MLBB",
                      _game == GameType.mlbb,
                      () => setState(() => _game = GameType.mlbb),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          _Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Select Package",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: _Tier(
                        title: "Gold",
                        price: _packages[_game]![PackageTier.gold]!.price,
                        selected: _tier == PackageTier.gold,
                        onTap: () => setState(() => _tier = PackageTier.gold),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _Tier(
                        title: "Platinum",
                        price: _packages[_game]![PackageTier.platinum]!.price,
                        selected: _tier == PackageTier.platinum,
                        onTap: () =>
                            setState(() => _tier = PackageTier.platinum),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          _Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pkg.name,
                  style: const TextStyle(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 6),
                Text(
                  "${pkg.price} BDT / Match",
                  style: const TextStyle(color: Color(0xFFB7C0D6)),
                ),
                const SizedBox(height: 12),

                // ✅ ONLY ONE FEATURES LIST (fixed)
                Column(
                  children: pkg.features
                      .map(
                        (f) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.check_circle_rounded,
                                size: 18,
                                color: accent,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  f,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFB7C0D6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          _Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Matches & Total",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _matchesCtrl,
                  keyboardType: TextInputType.number,
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(
                    labelText: "Number of matches",
                    filled: true,
                    fillColor: Colors.white.withOpacity(.05),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(child: _MiniBox("Per Match", "${pkg.price}")),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _MiniBox(
                        "Matches",
                        "${matches > 0 ? matches : 0}",
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _MiniBox("Total", "$total", highlight: true),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final Widget child;
  const _Card({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF111827),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white.withOpacity(.06)),
      ),
      child: child,
    );
  }
}

class _Chip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;
  const _Chip(this.label, this.selected, this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(999),
          color: selected
              ? const Color(0xFF16F2D0).withOpacity(.16)
              : Colors.white.withOpacity(.05),
          border: Border.all(
            color: selected
                ? const Color(0xFF16F2D0)
                : Colors.white.withOpacity(.06),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: selected ? const Color(0xFF16F2D0) : Colors.white,
          ),
        ),
      ),
    );
  }
}

class _Tier extends StatelessWidget {
  final String title;
  final int price;
  final bool selected;
  final VoidCallback onTap;

  const _Tier({
    required this.title,
    required this.price,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final border = selected
        ? const Color(0xFF16F2D0)
        : Colors.white.withOpacity(.06);

    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.04),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.w900)),
            const SizedBox(height: 6),
            Text(
              "$price BDT/Match",
              style: const TextStyle(fontSize: 12, color: Color(0xFFB7C0D6)),
            ),
          ],
        ),
      ),
    );
  }
}

class _MiniBox extends StatelessWidget {
  final String label;
  final String value;
  final bool highlight;

  const _MiniBox(this.label, this.value, {this.highlight = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: highlight
              ? const Color(0xFF16F2D0)
              : Colors.white.withOpacity(.06),
        ),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 11, color: Color(0xFF8A93A6)),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: highlight ? const Color(0xFF16F2D0) : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
