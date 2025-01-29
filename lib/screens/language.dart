import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class Language_screen extends StatefulWidget {
  const Language_screen({super.key});

  @override
  State<Language_screen> createState() => Language_screenState();
}




class Language_screenState extends State<Language_screen> {
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
                                  child: Text("language",
                                  ),
                                ),
      bottomNavigationBar: BottomMenu()
    );
  }
}