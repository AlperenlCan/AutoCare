import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceAround ,
        children: [
          IconButton(
            onPressed: () {context.go("/home");},
             icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
         
          IconButton(
            onPressed: () { context.go("/profile");},
             icon: Icon(
              Icons.car_crash,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () { context.go("/profile");},
             icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
        ],
      ) ,
    );
  }
} 