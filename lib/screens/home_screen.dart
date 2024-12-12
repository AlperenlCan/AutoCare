import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaplanrengim,
      // AppBar
      appBar: AppBar(
        title: const Text('Auto Care'),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
          ), 
        ],
      ),
            body: Column(
        children: [
          
          Expanded(
            flex: 8,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  "https://ohmymi.com.my/wp-content/uploads/2021/03/vw-golf-mk7-2012-2018-brake-pads-kit.png",
                  fit: BoxFit.contain,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  top: 20, 
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Plaka: 35XYZ789               Plaka: 34ABC12",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          Expanded(
            flex: 5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  "https://cdn.pixabay.com/photo/2018/04/25/21/11/motorcycle-3350600_960_720.png",
                  fit: BoxFit.contain,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  top: 20, // 
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                     
                      SizedBox(height: 5), 
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // Drawer (Yan Menü)
      drawer: Drawer(
              backgroundColor: arkaplanrengim,
        child: Column(
          children: [
            // Drawer Header
            Container(
              
              height: 200,
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 // const Icon(
                   // CupertinoIcons.person_circle,
                   // size: 80,
                  //  color: Colors.black,
                 // ),
                  const SizedBox(height: 10),
                 SizedBox(
                  
                width: 110,
                height: 110,
                child: DotLottieLoader.fromAsset("assets/motions/s.lottie",
                      frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(dotlottie.animations.values.single);
                    } else {
                      return Container();
                    }
                  }),
              ),
              // güzel bir lottie eklemek istedim ekleyemedim
              // SizedBox(
              //   width: 110,
              //   child: DotLottieLoader.fromAsset("assets/motions/loading.lottie",
              //         frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
              //       if (dotlottie != null) {
              //         return Lottie.memory(dotlottie.animations.values.single);
              //       } else {
              //         return Container();
              //       }
              //     }),
              // ),

                ],
              ),
            ),


            // Menü öğeleri
            ListTile(
              leading: const Icon(Icons.brightness_6),
              title: const Text('Tema seçimi'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Bildirimler'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Dil seçimi'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Şifre değiştir'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Çıkış yap'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Uygulama Hakkında'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Ana içerik

      // Alt navigasyon çubuğu
      bottomNavigationBar: const BottomMenu()
    );
  }
}

