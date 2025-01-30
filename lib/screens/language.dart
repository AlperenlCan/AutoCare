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
                   

      body: ListTile(
      leading: Icon(
        Icons.language, 
        color: Colors.black87,
      ),
      title: Text(
        'Dil',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      trailing: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        child: DropdownButton<String>(
          value: 'TR',
          underline: SizedBox(), 
          icon: Icon(Icons.arrow_drop_down, color: Colors.grey),
          isDense: true,
          items: [
            DropdownMenuItem(
              value: 'TR',
              child: Text('Türkçe'),
            ),
            DropdownMenuItem(
              value: 'EN', 
              child: Text('English'),
            ),
          ],
          onChanged: (String? value) {
            
          },
        ),
      ),
      ),
      bottomNavigationBar: BottomMenu()
    );
  }
}