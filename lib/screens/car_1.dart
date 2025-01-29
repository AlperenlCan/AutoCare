import 'package:flutter/material.dart';
import '../widgets/bottom_menu.dart';

class ServiceInfo extends StatelessWidget {
  const ServiceInfo({super.key});

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
                  "https://ms-prd-nna.use.mediaserver.heliosnissan.net/iris/iris?resp=png&bkgnd=transparent&pov=E01&w=8667&h=8667&x=797&y=222&height=326&width=578&vehicle=8_R35&paint=GAG&fabric=D&brand=nisnna&sa=1_G,2_LR,4_N,5_L,6_Y,7_3,11_Z,12_U,13_A,14_7,15_G,SHADOW_ON,PI_ON,PE_ON,2024",
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
                        "Plaka: 35XYZ789 ",
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
                    "1. Yağ değişimi: 10.000 km\n"
                    "2. Lastik rotası: 15.000 km\n"
                    "3. Fren bakımı: 20.000 km\n"
                    "4. Soğutma sıvısı kontrolü: 25.000 km\n"
                    "5. Akü kontrolü: 30.000 km\n"
                    "6. Hava filtresi değişimi: 40.000 km",
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
