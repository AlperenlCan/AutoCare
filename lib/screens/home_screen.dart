import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/screens/theme_screen.dart';
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
        backgroundColor: Color.fromRGBO(253, 127, 38, 1),
        title: const Text('Auto Care', style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell,color:Colors.black,),
            onPressed: () {context.go("/Setting_screen");},
            
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
                  "https://ms-prd-nna.use.mediaserver.heliosnissan.net/iris/iris?resp=png&bkgnd=transparent&pov=E01&w=8667&h=8667&x=797&y=222&height=326&width=578&vehicle=8_R35&paint=GAG&fabric=D&brand=nisnna&sa=1_G,2_LR,4_N,5_L,6_Y,7_3,11_Z,12_U,13_A,14_7,15_G,SHADOW_ON,PI_ON,PE_ON,2024",
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
            flex: 4,
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
              backgroundColor: Color.fromRGBO(252, 139, 87, 1),
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
              leading: const Icon(Icons.brightness_6, color:Colors.black,),
              title: const Text('Tema seçimi'),
              onTap: () {
                context.go("/theme_screen");
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications, color:Colors.black),
              title: const Text('Bildirimler'),
              onTap: () {
                context.go("/natification");
              },
            ),
            ListTile(
              leading: const Icon(Icons.language, color:Colors.black),
              title: const Text('Dil seçimi'),
              onTap: () {
                context.go("/Language_screen");
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app, color:Colors.black),
              title: const Text('Çıkış yap'),
              onTap: () {
                context.go("/Logout_screen");
              },
            ),

            ListTile(
              leading: const Icon(CupertinoIcons.settings, color:Colors.black),
              title: const Text('Uygulama Hakkında'),
              onTap: () {
                context.go("/Info_screen");
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

