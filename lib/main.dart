import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// First App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyProfile(),
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6F4E37),

      // Drawer
      drawer: Drawer(
        // Hoping for bonus points :)
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff6F4E37)),
              child: Center(
                child: Text(
                  "Mine",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.person), title: Text("Profile")),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
          ],
        ),
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // My profile
              const CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),

              const SizedBox(height: 20),

              // Name
              const Text(
                "Raghdaa",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),

              const SizedBox(height: 8),

              // Job Title
              const Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 223, 216, 192),
                  letterSpacing: 3,
                ),
              ),

              const SizedBox(height: 20),

              // Divider
              Container(width: 180, height: 1, color: Colors.white54),

              const SizedBox(height: 25),

              // Phone Card
              ContactCard(icon: Icons.phone, text: "+20 01146972964"),

              const SizedBox(height: 15),

              // Email Card
              ContactCard(icon: Icons.email, text: "ra4hdaa@gmail.com"),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactCard({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),

      child: Row(
        children: [
          // Icon
          Icon(icon, color: const Color(0xff6F4E37)),

          const SizedBox(width: 20),

          // Text
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
