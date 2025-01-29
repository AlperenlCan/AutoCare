import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../core/theme.dart';

import '../widgets/bottom_menu.dart';

class Setting_screen extends StatefulWidget {
  const Setting_screen({super.key});

  @override
  State<Setting_screen> createState() => _Setting_screenState();
}

class _Setting_screenState extends State<Setting_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          leading: IconButton(
            icon: const Icon(color: Colors.black, CupertinoIcons.back),
            onPressed: () {
              context.go('/home');
            },
          ),
        ),
        body: ListTile(
          leading: Icon(Icons.brightness_6, color: Colors.black,),
          title: Text(
            'Tema',
            style: TextStyle(
              fontSize: 18,
              
              color: Colors.black,
              letterSpacing: 1.2,
            ),
          ),
          trailing: Switch(
            value: Theme.of(context).brightness == Brightness.dark,
            activeColor: Colors.orange,  // Açık durumda turuncu
            activeTrackColor: Colors.orange.withOpacity(0.5), // Track rengi yarı saydam
            inactiveThumbColor: Colors.orange, // Kapalı durumda turuncu
            inactiveTrackColor: Colors.orange.withOpacity(0.3), // Kapalı track rengi
            onChanged: (value) {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ),
        bottomNavigationBar: BottomMenu()
    );
  }
}