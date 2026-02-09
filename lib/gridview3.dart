import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewWithIcon(),
    );
  }
}

class GridViewWithIcon extends StatefulWidget {
  const GridViewWithIcon({super.key});

  @override
  State<GridViewWithIcon> createState() => _GridViewWithIconState();
}

class _GridViewWithIconState extends State<GridViewWithIcon> {
  final List<Map<String, dynamic>> items = const [
    {"icon": Icons.home, "label": "Home", "color": Colors.green},
    {"icon": Icons.email, "label": "Email", "color": Colors.pink},
    {"icon": Icons.alarm, "label": "Alarm", "color": Colors.purple},
    {"icon": Icons.wallet, "label": "Wallet", "color": Colors.pinkAccent},
    {"icon": Icons.backup, "label": "Backup", "color": Colors.grey},
    {"icon": Icons.book, "label": "Book", "color": Colors.deepPurple},
    {"icon": Icons.camera_alt, "label": "Camera", "color": Colors.yellow},
    {"icon": Icons.person, "label": "Person", "color": Colors.brown},
    {"icon": Icons.print, "label": "Print", "color": Colors.grey},
    {"icon": Icons.phone, "label": "Phone", "color": Colors.lightGreen},
    {"icon": Icons.note, "label": "Notes", "color": Colors.teal},
    {"icon": Icons.music_note, "label": "Music", "color": Colors.pinkAccent},
    {"icon": Icons.car_rental, "label": "Car", "color": Colors.brown},
    {"icon": Icons.pedal_bike, "label": "Bicycle", "color": Colors.purple},
    {"icon": Icons.directions_boat, "label": "Boat", "color": Colors.green},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GridView with Icon",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        padding: const EdgeInsets.all(8.0),
        children: items.map((item) {
          return Container(
            decoration: BoxDecoration(
              color: item["color"],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(item["icon"], size: 40, color: Colors.black),
                const SizedBox(height: 8),
                Text(
                  item["label"],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
