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
          backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
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
            activeColor: Colors.orange,  
            activeTrackColor: Colors.orange.withOpacity(0.5), 
            inactiveThumbColor: Colors.orange, 
            inactiveTrackColor: Colors.orange.withOpacity(0.3), 
            onChanged: (value) {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ),
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