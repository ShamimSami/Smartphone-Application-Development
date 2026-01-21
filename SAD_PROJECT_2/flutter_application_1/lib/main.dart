import 'package:flutter/material.dart';

import 'login_page.dart';
import 'home_page.dart';
import 'package_system_page.dart';
import 'contact_page.dart';

void main() {
  runApp(const GeneralEsportsApp());
}

class GeneralEsportsApp extends StatelessWidget {
  const GeneralEsportsApp({super.key});

  static const Color bg = Color(0xFF0B0F1A);
  static const Color surface = Color(0xFF111827);
  static const Color accent = Color(0xFF16F2D0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "General Esports",
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: bg,
        colorScheme: const ColorScheme.dark(
          primary: accent,
          secondary: accent,
          background: bg,
          surface: surface,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: bg,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF0B1220),
          selectedItemColor: accent,
          unselectedItemColor: Color(0xFF8A93A6),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
        ),
      ),
      initialRoute: "/login",
      routes: {
        "/login": (_) => const LoginPage(),
        "/app": (_) => const MainTabs(),
      },
    );
  }
}

class MainTabs extends StatefulWidget {
  const MainTabs({super.key});

  @override
  State<MainTabs> createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> {
  int _index = 0;

  final _pages = const [HomePage(), PackageSystemPage(), ContactPage()];

  final _titles = const ["General Esports", "Package System", "Contact"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 110,
        title: _index == 0
            ? Image.asset("assets/geslogo.png", height: 90, fit: BoxFit.contain)
            : Text(
                _titles[_index],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events_rounded),
            label: "Package",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent_rounded),
            label: "Contact",
          ),
        ],
      ),
    );
  }
}
