import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class ServiceInfo extends StatelessWidget {
  const ServiceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                    backgroundColor: arkaplanrengim,

      body: Center(
        child: Text("Servis bilgisi"),
      ),
            bottomNavigationBar: BottomMenu()

    );
  }
}