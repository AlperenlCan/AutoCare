import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class Info_screen extends StatefulWidget {
  const Info_screen({super.key});

  @override
  State<Info_screen> createState() => _Info_screenState();
}

class _Info_screenState extends State<Info_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          leading: IconButton(
          icon: const Icon(color: Colors.black, CupertinoIcons.back),
          onPressed: () {
            context.go('/home');
          },
        ),

        ),
                  

      body: Center(
        child: Text(    'Sürüm 1.4.27\n'  
    'Yayın Tarihi: 29 Ocak 2025\n'  
    'Yeni Özellikler:\n'  
    '- Gelişmiş kullanıcı arayüzü\n'  
    '- Artırılmış performans optimizasyonları\n'  
    '- Kullanıcı geri bildirimlerine dayalı yeni ayarlar\n\n'  
    'Düzeltmeler:\n'  
    '- Hatalı bildirim sorunları düzeltildi.\n'  
    '- Uygulama çökmesine neden olan bazı hatalar giderildi.',  
    style: TextStyle(
      fontSize: 20 ,
      color: Colors.black
    ),
      ),
      ),
      bottomNavigationBar: BottomMenu()
    );
  }
}