import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../core/constants.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  

  @override

  
  Widget build(BuildContext context) {
    
    return Scaffold(
              backgroundColor: arkaplanrengim,
      
      body: SizedBox.expand(
        // width: double.infinity,
        child: Column(
          children: [
            // Logo bölümü
            Container(
              width: 150,
              height: 150,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
              ),
            ),
            
            const SizedBox(height: 30),
            
          

            InkWell(
              onTap: ()=> context.go("/home"),
              child: SizedBox(
                width: 450,
                child: DotLottieLoader.fromAsset("assets/motions/loading.lottie",
                      frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(dotlottie.animations.values.single);
                    } else {
                      return Container();
                    }
                  }),
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}