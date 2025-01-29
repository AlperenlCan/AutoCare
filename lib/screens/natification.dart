import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class Natification extends StatefulWidget {
  const Natification({super.key});

  @override
  State<Natification> createState() => _NatificationState();
}

class _NatificationState extends State<Natification> {
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
        child: Text("Natification"),
      ),
      bottomNavigationBar: BottomMenu()
    );
  }
}