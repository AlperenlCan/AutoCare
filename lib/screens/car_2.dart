import 'package:flutter/material.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  "https://cdn.pixabay.com/photo/2018/04/25/21/11/motorcycle-3350600_960_720.png",
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Plaka: 34ABC123 ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Servis Bakım Bilgileri:",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "1. Yağ değişimi: 5.000 km\n"
                    "2. Lastik rotası: 10.000 km\n"
                    "3. Fren bakımı: 10.000 km\n"
                    "4. Soğutma sıvısı kontrolü: 15.000 km\n"
                    "5. Akü kontrolü: 7.000 km\n"
                    "6. Hava filtresi değişimi: 20.000 km",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
