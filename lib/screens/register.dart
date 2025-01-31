// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}


class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController kullaniciYonetici = TextEditingController();
  TextEditingController sifreYonetici = TextEditingController();
  girisYap() {
  if(kullaniciYonetici.text.isEmpty || sifreYonetici.text.isEmpty ) {
    ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text("Bilgilerinizi Girin"),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.orange,
      showCloseIcon: true,

      ),
      );
  }
  else{
    context.go("/home");
  }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
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
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                
                child: Text("Giriş Yapınız"),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "İsim",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                
                decoration: InputDecoration(
                  hintText: "Soyisim",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: kullaniciYonetici,
                decoration: InputDecoration(
                  hintText: "Kullanıcı adı",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                controller: sifreYonetici,

                decoration: InputDecoration(
                  hintText: "Şifre",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              
              
              
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: girisYap,
              child: const Text("Kayıt ol"),
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: BottomMenu()
    );
  }
}