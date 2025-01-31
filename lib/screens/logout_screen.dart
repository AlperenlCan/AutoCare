import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class Logout_screen extends StatefulWidget {
  const Logout_screen({super.key});

  @override
  State<Logout_screen> createState() => _Logout_screenState();
}

class _Logout_screenState extends State<Logout_screen> {
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
                  

      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.delete, color: Colors.red),
            title: Text(
              'Hesabı Sil',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomMenu()
    );
  }
}