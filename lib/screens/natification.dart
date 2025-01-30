import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/bottom_menu.dart';

class Natification extends StatefulWidget {
  const Natification({super.key});

  @override
  State<Natification> createState() => _NatificationState();
}

class _NatificationState extends State<Natification> {
  final List<Map<String, String>> notifications = [
    {
      "title": "Yağ değişimi zamanı!",
      "description": "Aracınızın yağ değişimi zamanı geldi. Hemen randevu alın.",
      "date": "30 Ocak 2025"
    },
    {
      "title": "Lastik Basıncı Düşük",
      "description": "Aracınızın lastik basıncı düşük olabilir. Kontrol edin.",
      "date": "29 Ocak 2025"
    },
    {
      "title": "Bakım hatırlatıcısı",
      "description": "Aracınızın genel bakımı için planlanan tarih yaklaşıyor.",
      "date": "28 Ocak 2025"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text("Bildirimler", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: Colors.black),
          onPressed: () => context.go('/home'),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const Icon(CupertinoIcons.bell, color: Colors.orange),
              title: Text(notification["title"]!, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(notification["description"]!),
              trailing: Text(notification["date"]!, style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
            ),
          );
        },
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
