import 'package:flutter/material.dart';
import 'package:spade/screen/global_screen.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Text(""),
      elevation: 0,
      backgroundColor: Colors.black,
      pinned: true,
      centerTitle: false,
      title: const Text("FEED",style: TextStyle(color: Colors.white),), 
      actions: [
        SizedBox(height: 60,width: 60,
        child: Image.asset("assets/images/Camera.png"),
        ),
        SizedBox(height: 60,width: 60,
        child: Image.asset("assets/images/Group 1723.png"),
        ),
        SizedBox(height: 60,width: 60,
        child: Image.asset("assets/images/mdi_bell-notification-outline.png"),
        ),
      ],

    );
  }
}