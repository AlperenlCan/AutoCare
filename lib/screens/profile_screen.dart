// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

TextEditingController kullaniciYonetici = TextEditingController();
  TextEditingController sifreYonetici = TextEditingController();
  void girisYap(BuildContext context){
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
    if(sifreYonetici.text.length < 8){
      ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text("Şifre minimum 8 hane olmalı"),
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

  }

class _ThemeScreenState extends State<ThemeScreen> {
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
                controller: kullaniciYonetici,
                decoration: InputDecoration(
                  hintText: "Kullanıcı adı",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),

              TextField(
                controller: sifreYonetici,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Şifre",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  girisYap(context);
                },
                child: Text("Giriş Yap"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () { 
                  context.push("/register");
              },
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