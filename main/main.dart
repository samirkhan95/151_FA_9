import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DigitalIDCard(),
    );
  }
}

class DigitalIDCard extends StatelessWidget {
  const DigitalIDCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDE7F6),
      appBar: AppBar(
        title: const Text("Digital ID Card",
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color(0xFF607D8B),
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/Photo sqr 3.jpg"),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Samir Islam Khan",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  const Text(
                    "Batch: 63rd, Department of CSE",
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 12),
                  const Divider(),
                  const InfoTile(
                    icon: Icons.person_outline,
                    text: "ID: 0182410012101151",
                  ),
                  const InfoTile(
                    icon: Icons.email_outlined,
                    text: "Email: samirkhan11880@gmail.com",
                  ),
                  const InfoTile(
                    icon: Icons.phone_outlined,
                    text: "Phone: +8801643213403",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoTile({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey[700]),
          const SizedBox(width: 12),
          Text(
            text,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}